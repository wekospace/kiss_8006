#/usr/bin/env python3

import threading
import time
from queue import Queue, Empty
from .kmm_io import KmmIo

class KmmIoThread(threading.Thread):
    def __init__(self, debug):
        self.__debug = debug
        self.__tx = Queue()
        self.__rx = Queue()
        self.__rx_remaining_bytes = 0
        self.__rx_current_buffer = []
        self.__kill = False
        self.__something_to_process = threading.Event()
        self.__waiting_for_rx = threading.Event()
        threading.Thread.__init__(self)
        self.__lv = KmmIo(self.__debug)
        self.__frame_received_callback = None

    def kill(self):
        self.__kill = True
        self.__something_to_process.set()

    def run(self):
        while not self.__kill:
            self.__something_to_process.wait()
            if self.__kill: break
            if not self.__tx.empty():
                self.send(self.__tx.get())
                if not self.__tx.empty():
                  self.__something_to_process.set()
                  continue

            if self.__rx_remaining_bytes > 0:
                self.receive(self.__rx_remaining_bytes)
            elif self.__rx_remaining_bytes == 0 and self.__waiting_for_rx.is_set():
                self.receive(3)
                self.__waiting_for_rx.clear()

            if self.__frame_received_callback != None:
                while not self.__rx.empty():
                    self.__frame_received_callback(self.__rx.get())

            if self.__tx.empty() and self.__rx_remaining_bytes == 0:
                self.__something_to_process.clear()

    def send(self, data):
        rx = self.__lv.send_raw_data(data)
        self.process_received_bytes(rx)

    def receive(self, lenght):
        self.send([0xaa] * lenght)

    def process_rx_buffer(self):
        while len(self.__rx_current_buffer) and self.__rx_current_buffer[0] == 0xaa:
            del self.__rx_current_buffer[0]

        if len(self.__rx_current_buffer):
            if self.__rx_current_buffer[0] == 0x23:
                if len(self.__rx_current_buffer) >= 3:
                    rx_frame_len = (self.__rx_current_buffer[1]-0x30) * 10 + (self.__rx_current_buffer[2]-0x30)
                else:
                    rx_frame_len = 3

                self.__rx_remaining_bytes = rx_frame_len - len(self.__rx_current_buffer)

                if self.__rx_remaining_bytes <= 0 and len(self.__rx_current_buffer):
                    if self.__rx_current_buffer.count(0x23) != 1:
                        print("Dropping frame : " + str(self.__rx_current_buffer))
                        self.__rx_current_buffer.pop(0)
                        self.drop_junk()
                    else:
                        self.__rx.put(self.__rx_current_buffer[0:rx_frame_len])
                        self.__rx_current_buffer = self.__rx_current_buffer[rx_frame_len:]
                        self.process_rx_buffer()
                        self.__rx_remaining_bytes = 0
            else:
                self.drop_junk()

    def drop_junk(self):
        while len(self.__rx_current_buffer) and (self.__rx_current_buffer[0] != 0x23):
            print("Dropping byte : " + str(hex(self.__rx_current_buffer[0])))
            self.__rx_current_buffer.pop(0)
        if len(self.__rx_current_buffer):
            self.process_rx_buffer()

    def process_received_bytes(self, data):
        self.__rx_current_buffer += data
        self.process_rx_buffer()
        if self.__debug: print("(remaining: " + str(self.__rx_remaining_bytes) + ")")

    def put_tx(self, data):
        if self.__debug: print("+++ " + bytes(data).decode('iso8859-1'))
        self.__tx.put(data)
        self.__something_to_process.set()

    def get_rx(self):
        self.request_reception()
        data = None
        try:
            data = self.__rx.get(timeout=1)
            if self.__debug: print("--- " + str(data))
        except Empty:
            pass
        return data

    def register_frame_received_callback(self, function):
        self.__frame_received_callback = function

    def request_reception(self):
        self.__waiting_for_rx.set()
        self.__something_to_process.set()

    def terminate(self):
        print("I'm HERE")
        while self.is_alive():
            if not self.__something_to_process.is_set(): self.kill()
            self.join(1)

    def wait_until_terminate(self):
        try:
            self.terminate()

        except KeyboardInterrupt:
            print("Ctrl-c pressed ...")
            self.kill()


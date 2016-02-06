#/usr/bin/env python3

import spidev
import time

def text_to_bytearray(text):
    return text.encode('iso8859-1', errors='replace')

class K8006LowLevel:
    """K8006 front-panel driver class"""
    def __init__(self, debug=False):
        self.debug = debug
        self.speed = 50000
        self.spi = spidev.SpiDev()
        self.spi.open(0,0)
        self.spi.max_speed_hz = self.speed
        self.spi.mode = 0b00

    def send_raw_data(self, data):
        resp = self.spi.xfer(data, self.speed, 50000)
        if self.debug: print("--> " + str([hex(i) for i in data]))
        if self.debug: print("<-- " + str([hex(i) for i in resp]))
        return resp

# #06VN1 -> 0x4e => ZZZ
# #06VA1 => All ON (Crash)
#send([ord('V'), ord('A'), 0x31])

# VSA => Am
# VSC => Ch
# VSF => Fm
# VSR => Rec
# VSS => Stereo
# VST => Title

# VSa => Antenna
# VSc => Clock
# VSt => Track

from enum import Enum
class LedColor(Enum):
    (off, red, orange, green) = range(4)


class K8006():
    def __init__(self, async=False, debug=False):
        self.__async = async
        if not self.__async:
            self.__io = K8006LowLevel(debug)
            self.__send_raw_data = self.__io.send_raw_data
        else:
            self.__io = KMM(debug)
            self.__io.start()
            self.__send_raw_data = self.__io.put_tx

    def send_raw_payload(self, payload):
        header = [0x23, 0x00, 0x00]
        lenght = len(payload) + len(header)
        header[1] = 0x30 + int(lenght / 10)
        header[2] = 0x30 + (lenght % 10)
        return self.__send_raw_data(header + payload)

    def send_command(self, command):
        return self.send_raw_payload(list(text_to_bytearray(command)))

    def set_text(self, text):
        self.send_command("VD" + text)

    def set_flash_text(self, duration, text):
        self.send_command("VF" + '%0*d' % (2, duration) + text)

    def set_scrolling_text(self, period, count, text):
        self.send_command("VR" + '%0*d' % (2, period) + '%0*d' % (2, count) + text)

    def set_power_led(self, color):
        colorToFrames = {
            LedColor.off:    ['L000', 'L011'],
            LedColor.red:    ['L100', 'L011'],
            LedColor.green:  ['L000', 'L101'],
            LedColor.orange: ['L100', 'L101'],
        }
        commands = colorToFrames.get(color, None)
        if commands == None:
            raise NameError('NotValidLedColor')
        else:
            self.send_command(commands[0])
            self.send_command(commands[1])

    # VC => left clock
    def set_track_clock(self, text):
        if text is None:
            self.send_command("Vz")
        else:
            self.send_command("VC" + text)

    # Vc => center clock
    def set_clock(self, text):
        if text is None:
            self.send_command("Vq")
        else:
            self.send_command("Vc" + text)

    # VT => time (center clock + seconds)
    def set_time(self, text):
        if text is None:
            self.send_command("Vq")
        else:
            self.send_command("VT" + text)

    def clear(self):
        self.send_command("Vw")

    def poweroff(self, delay):
        self.send_command("CW" + '%0*d' % (2, delay))

    def send_raw_data(self, data):
        self.__send_raw_data(data)

    def receive_raw_payload(self, tries=3):
        if not self.__async:
            data = [0xaa]
            while((data == [0xaa] and tries>0)):
                data = self.__send_raw_data([0xaa])
                tries -= 1

            if(tries==0): return None

            if data != [0x23]:
                raise NameError('NotValidHeader: data != 0x23: ' + str(hex(data[0])))

            frame_len_blob = self.__send_raw_data([0xaa, 0xaa])
            frame_len = (frame_len_blob[0] - 0x30) * 10
            frame_len += frame_len_blob[1] - 0x30
            frame_len -= 3
            raw = [0xaa] * frame_len
            return self.__send_raw_data(raw)
        else:
            payload = self.__io.get_rx()
            if payload == None:
                return None
            else:
                return payload[3:]

    def __del__(self):
        if self.__async: self.__io.terminate()


import threading
import time
from queue import Queue, Empty

class KMM(threading.Thread):
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
        self.__lv = K8006LowLevel(self.__debug)

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

 #           while not self.__rx.empty():
 #               print("<-- " + str(self.__rx.get()) + " " + str(self.__rx_remaining_bytes))

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
                    self.__rx.put(self.__rx_current_buffer[0:rx_frame_len])
                    self.__rx_current_buffer = self.__rx_current_buffer[rx_frame_len:]
                    self.process_rx_buffer()
                    self.__rx_remaining_bytes = 0
            else:
                print("Failure : " + str(self.__rx_current_buffer[0]))

    def process_received_bytes(self, data):
        self.__rx_current_buffer += data
        self.process_rx_buffer()
        if self.__debug: print("(remaining: " + str(self.__rx_remaining_bytes) + ")")

    def put_tx(self, data):
        if self.__debug: print("+++ " + str(data))
        self.__tx.put(data)
        self.__something_to_process.set()

    def get_rx(self):
        self.__waiting_for_rx.set()
        self.__something_to_process.set()
        data = None
        try:
            data = self.__rx.get(timeout=1)
            if self.__debug: print("--- " + str(data))
        except Empty:
            pass
        return data

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

    def send_raw_payload(self, payload):
        header = [0x23, 0x00, 0x00]
        lenght = len(payload) + len(header)
        header[1] = 0x30 + int(lenght / 10)
        header[2] = 0x30 + (lenght % 10)
        return self.put_tx(header + payload)

    def send_command(self, command):
        return self.send_raw_payload(list(text_to_bytearray(command)))


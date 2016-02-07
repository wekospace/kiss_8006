#/usr/bin/env python3

__all__ = [ 'Kmm', 'LedColor' ]

from .low_level import *

from . import mapping

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

class Kmm():
    def __init__(self, async=False, debug=False):
        self.__async = async
        if not self.__async:
            self.__io = kmm_io.KmmIo(debug)
            self.__send_raw_data = self.__io.send_raw_data
        else:
            self.__io = kmm_io_thread.KmmIoThread(debug)
            self.__io.start()
            self.__send_raw_data = self.__io.put_tx
            self.__kied = KmmInputEventDecoder(0.12)

    def send_raw_payload(self, payload):
        header = [0x23, 0x00, 0x00]
        lenght = len(payload) + len(header)
        header[1] = 0x30 + int(lenght / 10)
        header[2] = 0x30 + (lenght % 10)
        return self.__send_raw_data(header + payload)

    def send_command(self, command):
        return self.send_raw_payload(list(command.encode('iso8859-1', errors='replace')))

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

    def request_reception(self):
        if not self.__async:
            raise NameError("Can only request reception when using " + str(__name__) + " in async mode")
        self.__io.request_reception()

    def register_input_button_callback(self, function):
        if not self.__async:
            raise NameError("Can only register a callback when using " + str(__name__) + " in async mode")
        self.__io.register_frame_received_callback(self.__frame_received)
        self.__input_button_callback = function

    def __frame_received(self, frame):
        if(self.__input_button_callback != None):
            payload = bytes(frame[3:]).decode()
            kie = self.__kied.decode(payload)
            if kie != None:
                print(str(kie))

    def __del__(self):
        if self.__async: self.__io.terminate()


from enum import Enum
class LedColor(Enum):
    (off, red, orange, green) = range(4)

class InputEventType(Enum):
    (pressed, hold, released) = range(3)

import datetime

class KmmInputEventDecoder:
    def __init__(self, repeat_delta):
        self.__last_received_ir_input = None
        self.__last_pressed_ir_input = None
        self.__last_transmitted_ir_input = None
        self.__repeat_delta = repeat_delta

    def decode(self, payload):
        if(payload[0:2] == 'Ir'):
            return self.__decode_ir(payload[2:])
        elif(payload[0:1] == 'B'):
            return self.__decode_button(payload[1:])
        else:
            raise NamedError('Unknown reply type')

    def __decode_ir(self, ir_code):
        kie = None
        ir_input = (ir_code, datetime.datetime.now())
        ir_key = mapping.ir_code_to_key(ir_code)

        if self.__last_received_ir_input == None or self.__last_received_ir_input[0] != ir_input[0]:
            self.__last_pressed_ir_input = ir_input
            self.__last_transmitted_ir_input = ir_input
            kie = KmmInputEvent(ir_key, InputEventType.pressed, ir_input[1])
        else:
            delta = (ir_input[1]-self.__last_received_ir_input[1]).total_seconds()
            if delta > 0.12: # Key have been released then pressed again
                self.__last_pressed_ir_input = ir_input
                self.__last_transmitted_ir_input = ir_input
                kie = KmmInputEvent(ir_key, InputEventType.pressed, ir_input[1])
            else:
                repeat_delta = (ir_input[1]-self.__last_transmitted_ir_input[1]).total_seconds()
                if repeat_delta > self.__repeat_delta:
                    duration = (ir_input[1]-self.__last_pressed_ir_input[1]).total_seconds()
                    self.__last_transmitted_ir_input = ir_input
                    kie = KmmInputEvent(ir_key, InputEventType.hold, ir_input[1], duration)

        self.__last_received_ir_input = ir_input
        return kie

    def __decode_button(self, button_code):
        raise NamedError('Implement me!')

class KmmInputEvent:
    def __init__(self, key, type, timestamp, duration=0.0):
        self.timestamp = timestamp
        self.key = key
        self.type = type
        self.duration = duration

    def __str__(self):
        return('InputEvent(key="'+self.key+'", type="'+str(self.type)+'", timestamp="'+str(self.timestamp)+'", duration="'+str(self.duration)+'")')

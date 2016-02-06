#/usr/bin/env python3

__all__ = [ 'Kmm', 'LedColor' ]

from .low_level import *

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

    def __del__(self):
        if self.__async: self.__io.terminate()


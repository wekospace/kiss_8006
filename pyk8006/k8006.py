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

    def send_raw_payload(self, payload):
        header = [0x23, 0x00, 0x00]
        lenght = len(payload) + len(header)
        header[1] = 0x30 + int(lenght / 10)
        header[2] = 0x30 + (lenght % 10)
        return self.send_raw_data(header + payload)

    def send_command(self, command):
        return self.send_raw_payload(list(text_to_bytearray(command)))

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
    def __init__(self, debug=False):
        self._lv = K8006LowLevel(debug)

    def set_text(self, text):
        self._lv.send_command("VD" + text)

    def set_flash_text(self, duration, text):
        self._lv.send_command("VF" + '%0*d' % (2, duration) + text)

    def set_scrolling_text(self, period, count, text):
        self._lv.send_command("VR" + '%0*d' % (2, period) + '%0*d' % (2, count) + text)

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
            self._lv.send_command(commands[0])
            self._lv.send_command(commands[1])

    # VC => left clock
    def set_track_clock(self, text):
        if text is None:
            self._lv.send_command("Vz")
        else:
            self._lv.send_command("VC" + text)

    # Vc => center clock
    def set_clock(self, text):
        if text is None:
            self._lv.send_command("Vq")
        else:
            self._lv.send_command("Vc" + text)

    # VT => time (center clock + seconds)
    def set_time(self, text):
        if text is None:
            self._lv.send_command("Vq")
        else:
            self._lv.send_command("VT" + text)

    def clear(self):
        self._lv.send_command("Vw")

    def read_buttons(self):
        data = [0xaa]
        while (data == [0xaa]):
            data = self._lv.send_raw_data([0xaa])
        if data != [0x23]:
            return "ERROR: data != 0x23:" + str(hex(data[0]))

        frame_len_blob = self._lv.send_raw_data([0xaa, 0xaa])
        frame_len = (frame_len_blob[0] - 0x30) * 10
        frame_len += frame_len_blob[1] - 0x30
        frame_len -= 3
        raw = [0xaa] * frame_len
        return self._lv.send_raw_data(raw)

    def poweroff(self, delay):
        self._lv.send_command("CW" + '%0*d' % (2, delay))


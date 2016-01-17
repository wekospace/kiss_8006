#/usr/bin/env python
# -*- coding: utf-8 -*-

import spidev
import time

def int_to_chr(int):
    return chr(int).decode('latin-1')

def text_to_bytearray(text):
    return bytearray(text.decode('utf-8'), 'latin-1')

class K8006:
    """K8006 front-panel driver class"""
    def __init__(self):
        self.speed = 50000
        self.spi = spidev.SpiDev()
        self.spi.open(0,0)
        self.spi.max_speed_hz = self.speed
        self.spi.mode = 0b00

    def rawsend(self, data):
        resp = self.spi.xfer(data, self.speed, 50000)
        print "--> " + str([hex(i) for i in data])
        #print "> " + str(''.join([int_to_chr(i) for i in data]))
        print "<-- " + str([hex(i) for i in resp])
        #print "> " + str([int_to_chr(i) for i in resp])
        return resp

    def send(self, payload):
        header = [0x23, 0x00, 0x00]
        lenght = len(payload) + len(header)
        header[1] = 0x30 + (lenght / 10)
        header[2] = 0x30 + (lenght % 10)
        return self.rawsend(header + payload)

    def display_text(self, text):
        frame = [0x23, 0x00, 0x00, 0x56, 0x44]
        text_as_list = list(text_to_bytearray(text))
        count = len(text_as_list) + 5
        print count
        frame[1] = 0x30 + (count / 10)
        frame[2] = 0x30 + (count % 10)
        self.rawsend(frame + text_as_list)

    def flush_rx(self):
        while(self.rawsend([0xaa]) != [0xaa]):
            print "plop"

    def rawread(self):
        if (self.rawsend([0xaa]) != [0x23]):
            return False
        frame_len_blob = self.rawsend([0xaa, 0xaa])
        frame_len = (frame_len_blob[0] - 0x30) * 10
        frame_len += frame_len_blob[1] - 0x30
        frame_len -= 3
        raw = [0xAA] * frame_len
        return self.rawsend(raw)

    def read_buttons(self):
        self.flush_rx()
        self.rawread()
        return True

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

# VC => left clock
# Vc => center clock


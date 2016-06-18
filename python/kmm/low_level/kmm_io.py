#/usr/bin/env python3

import spidev
import time

class KmmIo:
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


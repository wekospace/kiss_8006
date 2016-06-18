#!/bin/bin/env python3

from .. import Kmm

from RPi import GPIO

class KmmPi(Kmm):
    def __init__(self, irq_pin=37, debug=False):
        Kmm.__init__(self, async=True, debug=debug)
        self.__irq_pin = irq_pin

        def irq_pin_trigged(pin):
            if debug: print("IRQ on:" + str(pin))
            self.request_reception()

        GPIO.setmode(GPIO.BOARD)
        GPIO.setup(irq_pin, GPIO.IN)
        GPIO.add_event_detect(irq_pin, GPIO.FALLING, callback=irq_pin_trigged)

        self.check_irq_pin()

    def read_irq_pin(self):
        return GPIO.input(self.__irq_pin)

    def check_irq_pin(self):
        while(self.read_irq_pin() == 0):
            self.request_reception()


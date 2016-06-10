#!/usr/bin/env python3

from RPi import GPIO

import time

def irq_pin_trigged(pin):
    print("IRQ on:" + str(pin))

irq_pin = 37

GPIO.setmode(GPIO.BOARD)
GPIO.setup(irq_pin, GPIO.IN)
GPIO.add_event_detect(irq_pin, GPIO.FALLING, callback=irq_pin_trigged)

while(True):
    pin_state = GPIO.input(irq_pin)
    print(pin_state)
    time.sleep(1)

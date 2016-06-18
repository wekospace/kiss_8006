#!/usr/bin/env python3

from RPi import GPIO

import time

rb_enable_pin =  7
rb_device_pins = [ 
    13, # IN1
    29, # IN2
    31, # IN3
    11, # IN4
    26, # IN5
    33, # IN6
    35, # IN7
    40, # IN8
]

print(GPIO.RPI_INFO)

GPIO.setmode(GPIO.BOARD)

GPIO.setup(rb_device_pins, GPIO.OUT)
GPIO.output(rb_device_pins, GPIO.HIGH)

GPIO.setup(rb_enable_pin, GPIO.OUT)
GPIO.output(rb_enable_pin, GPIO.LOW)

while(True):
    for pin in rb_device_pins:
        GPIO.output(pin, not GPIO.input(pin))
        time.sleep(1)

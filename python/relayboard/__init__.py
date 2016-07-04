#!/usr/bin/env python3

import sys

from RPi import GPIO

class RelayBoard():
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

    functions = {
        'IN1': 0,
        'IN2': 1,
        'IN3': 2,
        'IN4': 3,
        'IN5': 4,
        'IN6': 5,
        'IN7': 6,
        'IN8': 7,
        'amplifier': 0,
        'tv': 1,
        'wii': 4,
        'switch': 7,
    }

    def __init__(self):
        GPIO.setwarnings(False)
        GPIO.setmode(GPIO.BOARD)
        GPIO.setup(RelayBoard.rb_device_pins, GPIO.OUT)

    def set(self, function, status):
        if function == 'all':
            function = RelayBoard.rb_device_pins
        elif function in RelayBoard.functions.keys():
            function = RelayBoard.rb_device_pins[RelayBoard.functions[function]]
        else:
            raise NameError('Unkown function: ', function)

        if(status == 'on') or (status == True):
            status = True
        else:
            status = False

        if status:
            status = GPIO.LOW
        else:
            status = GPIO.HIGH

        GPIO.output(function, status)
        GPIO.setup(RelayBoard.rb_enable_pin, GPIO.OUT)
        GPIO.output(RelayBoard.rb_enable_pin, GPIO.LOW)


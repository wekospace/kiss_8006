#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import time
from RPi import GPIO

sys.path.append('../')
from k8006 import K8006

irq = 22
fp = K8006()

def int_to_chr(int):
    return chr(int).decode('latin-1')

def read_inputs(pin):
    #print "IRQ on:" + str(pin)
    data = fp.readButtons()
    print(str(''.join([int_to_chr(i) for i in data])))

GPIO.setmode(GPIO.BOARD)
GPIO.setup(irq,GPIO.IN)
GPIO.add_event_detect(irq, GPIO.FALLING, callback=read_inputs)

while(GPIO.input(irq) == 0):
    read_inputs("Zzz")

while True:
    time.sleep(1)
    #print "I'm alive !"
    input = GPIO.input(irq)
    if input != 1: print("Error: IRQ pin value is " + str(GPIO.input(irq)))

#!/usr/bin/env python3

import sys
import time
from RPi import GPIO

sys.path.append('../')
from kmm import K8006

irq = 22
fp = K8006(async=False,debug=True)

def int_to_chr(i):
    if(i == 0xaa):
        return '0xaa'
    else:
        return chr(i)

def read_inputs(pin):
    print("IRQ on:" + str(pin))
    data = fp.receive_raw_payload()
    if not(data == None):
        print(str(''.join([int_to_chr(i) for i in data])))
    input = GPIO.input(irq)
    print("input: "+str(input))
    if input != 1: read_inputs(None)

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

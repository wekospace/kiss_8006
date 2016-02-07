#!/usr/bin/env python3

import sys
import time

sys.path.append('../')
from kmm import *
from kmm.pi import KmmPi

debug=False

fp = KmmPi(irq_pin=22,debug=debug)

def int_to_chr(i):
    if(i == 0xaa):
        return '0xaa'
    else:
        return chr(i)

def button_received(button):
    print(button)
    text = "X" * int(button.duration*7)
    fp.set_text(text)
    fp.check_irq_pin()

fp.register_input_button_callback(button_received)

fp.set_text('Hit a key')

while True:
    time.sleep(1)
    #print "I'm alive !"
    input = fp.read_irq_pin()
    if input != 1: print("Error: IRQ pin value is " + str(input))

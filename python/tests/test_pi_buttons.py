#!/usr/bin/env python3

import sys, os
import time

sys.path.append(os.path.join(os.path.realpath(os.path.dirname(__file__)), '../'))

from kmm import *
from kmm.pi import KmmPi

debug=False

fp = KmmPi(debug=debug)

failure_counter = 0

def button_received(button):
    failure_counter = 0
    print(button)
    text = "X" * int(button.duration*7)
    fp.set_text(text)
    fp.check_irq_pin()

fp.register_input_button_callback(button_received)

fp.set_text('Hit a key')

while True:
    time.sleep(1)
    input = fp.read_irq_pin()
    if input != 1:
        failure_counter += 1
        print("Error: IRQ pin value is " + str(input) + ' (' + str(failure_counter) + ')')
        if failure_counter >= 3:
            print('Forcing pin read...')
            fp.check_irq_pin()

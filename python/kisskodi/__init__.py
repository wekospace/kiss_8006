#!/usr/bin/env python3

# This is a simple example showing how you can send a key press event
# to XBMC using the XBMCClient class

import sys, os
sys.path.append(os.path.join(os.path.realpath(os.path.dirname(__file__)), '../'))
sys.path.append(os.path.join(os.path.realpath(os.path.dirname(__file__)), '../share/pyshared'))

import time
from kodi.xbmcclient import XBMCClient,ACTION_EXECBUILTIN,ACTION_BUTTON

from kmm.pi import KmmPi
from kmm import LedColor,InputEventType

from kodi.kmm_mapping import button_to_action

def main():
    # Create an XBMCClient object and connect
    xbmc = XBMCClient("KissMe remote")
    xbmc.connect()

    kmm = KmmPi()
    kmm.set_text('Kodi KMM')
    kmm.set_power_led(LedColor.green)

    def button_received(button):
        print(str(button))
        action = button_to_action(button.key)
        if action != None:
            if button.type == InputEventType.pressed:
                xbmc.send_action(action, ACTION_BUTTON)
        kmm.set_text(str(action))
        kmm.check_irq_pin()

    kmm.register_input_button_callback(button_received)

    while True:
        time.sleep(10)
        if not xbmc.ping():
            xbmc.connect()

    # ok we're done, close the connection
    # Note that closing the connection clears any repeat key that is
    # active. So in this example, the actual release button event above
    # need not have been sent.
    xbmc.close()

if __name__=="__main__":
    main()

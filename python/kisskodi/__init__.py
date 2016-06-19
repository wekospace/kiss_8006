#!/usr/bin/env python3

import time
from kisskodi.xbmcclient import XBMCClient,ACTION_EXECBUILTIN,ACTION_BUTTON

from kmm import InputEventType

from kisskodi.kmm_mapping import button_to_action

class KissKodi:
    def __init__(self, fp):
        self.__client = XBMCClient("KissMe remote")
        self.__client.connect()
        self.__fp = fp

    def handle_inputevent(self, ie):
        action = button_to_action(ie.key)
        if action != None:
            if ie.type == InputEventType.pressed:
                self.__client.send_action(action, ACTION_BUTTON)
                self.__fp.set_text(str(action))

    def ping(self):
        self.__client.ping()

    def connect(self):
        self.__client.connect()

    def disconnect(self):
        self.__client.close()

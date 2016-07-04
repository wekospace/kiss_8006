#!/usr/bin/env python3

import time
from kisskodi.xbmcclient import XBMCClient,ACTION_EXECBUILTIN,ACTION_BUTTON

# http://kodi.wiki/view/Action_IDs
# http://kodi.wiki/view/Window_IDs
# https://github.com/xbmc/xbmc/blob/master/tools/EventClients/examples/python/example_action.py

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
            if(ie.type == InputEventType.hold):
                if(ie.key == 'volume_down') or (ie.key == 'volume_up'):
                    self.__client.send_action(action, ACTION_BUTTON)
                    self.__fp.set_text(str(action))
            elif(ie.type == InputEventType.pressed):
                self.__client.send_action(action, ACTION_BUTTON)
                self.__fp.set_text(str(action))

    def stop(self):
        self.__client.send_action('Stop',ACTION_BUTTON)

    def ping(self):
        self.__client.ping()

    def connect(self):
        self.__client.connect()

    def disconnect(self):
        self.__client.close()

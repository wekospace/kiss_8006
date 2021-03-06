from musicpd import (MPDClient, CommandError)
from select import select

from kmm import InputEventType

import threading
class KissMPD():
    def handle_idle(func):
        def inner(self, *args, **kwargs):
            self.__lock.acquire()
            self.__client.noidle()
            res = func(self, *args, **kwargs)
            self.__client.send_idle()
            self.__lock.release()
            return res
        return inner

    def __init__(self, fp):
        self.__fp = fp
        self.__client = MPDClient()
        self.__lock = threading.Lock()
        self.__idle_client = MPDClient()

    def connect(self):
        self.__client.connect('localhost', 6600)
        self.__idle_client.connect('localhost', 6600)
        status = self.__client.status()
        self.__state = status['state']
        self.__volume = int(status['volume'])
        try:
            self.__songid = status['songid']
        except:
            self.__songid = None
        self.__client.send_idle()
        self.__idle_client.send_idle()

    def disconnect(self):
        self.__client.disconnect()
        self.__idle_client.disconnect()

    def process(self):
        canRead = select([self.__idle_client], [], [], 0)[0]
        if canRead:
            changes = self.__idle_client.fetch_idle()
            self.__idle_client.send_idle() # continue idling
            change = self.update_status()
            return change
        return None

    @handle_idle
    def refresh(self):
        self.display_current_song()

    def display_current_song(self):
        if(self.__songid):
            song = self.__client.currentsong()
            try:
                text = song['artist'] + ' - ' + song['title']
            except:
                text = song['file'].split('/')[-1]

            self.__fp.set_scrolling_text(3, 1, text+'           ')
            try:
                time = divmod(int(song['time']), 60)
                self.__fp.set_track_clock('0{0[0]:02}{0[1]:02}'.format(time))
            except:
                self.__fp.set_track_clock(None)
        else:
            self.__fp.clear()

    def display_volume(self):
        self.__fp.set_flash_text(8, 'Volume: ' + str(self.__volume))

    def display_state(self):
        if(self.__state != 'play'):
            self.__fp.clear()
            self.__fp.set_text('{0:^12}'.format(self.__state))
        else:
            self.display_current_song()

    @handle_idle
    def update_status(self):
        status = self.__client.status()

        try:
            songid = status['songid']
        except:
            songid = None

        if(songid != self.__songid):
            self.__songid = songid
            self.display_current_song()

        if(int(status['volume']) != self.__volume):
            self.__volume = int(status['volume'])
            self.display_volume()

        state = status['state']
        if(state != self.__state):
            self.__state = state
            self.display_state()
            return state

        return None

    @handle_idle
    def volume_down(self):
        self.__volume = self.__volume - 1
        if(self.__volume < 0):
            self.__volume = 0
        self.__client.setvol(self.__volume)
        self.display_volume()

    @handle_idle
    def volume_up(self):
        self.__volume = self.__volume + 1
        if(self.__volume > 100):
            self.__volume = 100
        self.__client.setvol(self.__volume)
        self.display_volume()

    @handle_idle
    def play(self, toggle=False):
        if(self.__state == 'play'):
            if toggle:
                self.__client.pause()
        else:
            self.__client.play()

    def play_pause(self):
        self.play(True)

    @handle_idle
    def pause(self):
        self.__client.pause(1)

    @handle_idle
    def previous(self):
        self.__client.previous()

    @handle_idle
    def next(self):
        self.__client.next()

    @handle_idle
    def stop(self):
        self.__client.stop()

    def handle_inputevent(self, ie):
        key2function = {
            'volume_down'    : self.volume_down,
            'volume_up'      : self.volume_up,
            'stop'           : self.stop,
            'play'           : self.play_pause,
            'next_track'     : self.next,
            'previous_track' : self.previous,
            'right'          : self.next,
            'left'           : self.previous,
            'down'           : self.volume_down,
            'up'             : self.volume_up,
            'ok'             : self.play_pause,
            'mute'           : self.play_pause,
        }
        try:
            function = key2function[ie.key]
        except:
            function = None
        if not function:
            return False

        if(ie.type == InputEventType.hold):
            if(function == self.volume_down) or (function == self.volume_up):
                function()
        elif(ie.type == InputEventType.pressed):
            function()
        return True

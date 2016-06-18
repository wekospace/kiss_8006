from musicpd import (MPDClient, CommandError)
from select import select

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
            print('process: ',change)
            return change
        return None

    @handle_idle
    def refresh(self):
        self.display_current_song()

    def display_current_song(self):
        if(self.__songid):
            song = self.__client.currentsong()
            self.__fp.set_scrolling_text(3, 1, song['artist'] + ' - ' + song['title'])
            time = divmod(int(song['time']), 60)
            self.__fp.set_track_clock('0{0[0]:02}{0[1]:02}'.format(time))
        else:
            self.__fp.set_text('')

    def display_volume(self):
        self.__fp.set_flash_text(8, 'Volume: ' + str(self.__volume))

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

    @handle_idle
    def previous(self):
        self.__client.previous()

    @handle_idle
    def next(self):
        self.__client.next()

    @handle_idle
    def stop(self):
        self.__client.stop()

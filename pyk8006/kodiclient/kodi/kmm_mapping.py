#!/usr/bin/env python3

dictionnary = {
  'power' : 'ActivateWindow(ShutdownMenu)',
  'one' : 'Number1',
  'two' : 'Number2',
  'three' : 'Number3',
  'four' : 'Number4',
  'five' : 'Number5',
  'six' : 'Number6',
  'seven' : 'Number7',
  'eight' : 'Number8',
  'nine' : 'Number9',
  'delete' : 'Delete',
  'zero' : 'Number0',
  'enter' : 'Enter',
  'volume_up' : 'VolumeUp',
  'up' : 'Up',
  'program_up' : 'PageUp',
  'left' : 'Left',
  'ok' : 'Select',
  'right' : 'Right',
  'volume_down' : 'VolumeDown',
  'down' : 'Down',
  'program_down' : 'PageDown',
  'menu' : 'Menu',
  'back' : 'Back',
  'exit' : 'Close',
  'guide' : 'Playlist',
  'video' : 'FullScreen',
  'information' : 'Info',
  'swap' : 'Rotate',
  'voicemail' : 'OSD',
  'stop' : 'Stop',
  'play' : 'PlayPause',
  'record' : 'Record',
  'previous_track' : 'SkipPrevious',
  'fastrewind_track' : 'Rewind',
  'fastforward_track' : 'FastForward',
  'next_track' : 'SkipNext',
  'red' : 'red',
  'green' : 'green',
  'yellow' : 'yellow',
  'blue' : 'blue',
  'mute' : 'Mute',
  'music' : 'ShowSubtitles',
  'option' : 'ContextMenu',
}


def button_to_action(button):
    try:
        action = dictionnary[button]
    except KeyError:
        action = None
    return action

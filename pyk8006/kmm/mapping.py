#!/usr/bin/env python3

dictionnary = {
  'Ir156950': 'power',
  'Ir156930': 'one',
  'Ir156933': 'two',
  'Ir156934': 'three',
  'Ir156937': 'four',
  'Ir156938': 'five',
  'Ir156941': 'six',
  'Ir156942': 'seven',
  'Ir156945': 'eight',
  'Ir156946': 'nine',
  'Ir156962': 'delete',
  'Ir156949': 'zero',
  'Ir156965': 'enter',
  'Ir156966': 'volume_up',
  'Ir156953': 'up',
  'Ir156969': 'program_up',
  'Ir156957': 'left',
  'Ir156958': 'ok',
  'Ir156961': 'right',
  'Ir156970': 'volume_down',
  'Ir156954': 'down',
  'Ir156973': 'program_down',
  'Ir157018': 'menu',
  'Ir156986': 'back',
  'Ir156989': 'exit',
  'Ir156990': 'guide',
  'Ir156993': 'video',
  'Ir156974': 'information',
  'Ir156977': 'swap',
  'Ir156978': 'fr_bande',
  'Ir156981': 'stop',
  'Ir156982': 'play',
  'Ir156985': 'record',
  'Ir156994': 'previous_track',
  'Ir156997': 'fastrewind_track',
  'Ir156998': 'fastforward_track',
  'Ir157001': 'next_track',
  'Ir157002': 'red',
  'Ir157005': 'green',
  'Ir157006': 'yellow',
  'Ir157009': 'blue',
  'Ir157010': 'mute',
  'Ir157013': 'music',
  'Ir157014': 'option',
}

def payload_to_code(payload):
    try:
        code = dictionnary[payload]
    except KeyError:
        code = None
    return code

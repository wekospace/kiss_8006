#!/usr/bin/env python3

ir_code_to_key_dict = {
  '156950': 'power',
  '156930': 'one',
  '156933': 'two',
  '156934': 'three',
  '156937': 'four',
  '156938': 'five',
  '156941': 'six',
  '156942': 'seven',
  '156945': 'eight',
  '156946': 'nine',
  '156962': 'delete',
  '156949': 'zero',
  '156965': 'enter',
  '156966': 'volume_up',
  '156953': 'up',
  '156969': 'program_up',
  '156957': 'left',
  '156958': 'ok',
  '156961': 'right',
  '156970': 'volume_down',
  '156954': 'down',
  '156973': 'program_down',
  '157018': 'menu',
  '156986': 'back',
  '156989': 'exit',
  '156990': 'guide',
  '156993': 'video',
  '156974': 'information',
  '156977': 'swap',
  '156978': 'voicemail',
  '156981': 'stop',
  '156982': 'play',
  '156985': 'record',
  '156994': 'previous_track',
  '156997': 'fastrewind_track',
  '156998': 'fastforward_track',
  '157001': 'next_track',
  '157002': 'red',
  '157005': 'green',
  '157006': 'yellow',
  '157009': 'blue',
  '157010': 'mute',
  '157013': 'music',
  '157014': 'option',
}

def ir_code_to_key(ir_code):
    try:
        key = ir_code_to_key_dict[ir_code]
    except KeyError:
        key = None
    return key

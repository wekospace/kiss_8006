#!/usr/bin/env python3

import sys, os
import time

sys.path.append(os.path.join(os.path.realpath(os.path.dirname(__file__)), '../'))

from kmm import *

def usage():
    print("Usage: send COMMAND\n\nexample:")
    print("  send #46VR0301Jack Frost & The Circle Jerks - Shout")
    print("  send VC00211")
    sys.exit(1)

if len(sys.argv) != 2:
    usage()

fp = Kmm(debug=True,async=False)
command = sys.argv[1]

if(command[0] == '#'):
    fp._Kmm__send_raw_data(list(command.encode('iso8859-1')))
else:
    fp.send_command(command)

#!/usr/bin/env python3

import sys, os
sys.path.append(os.path.join(os.path.realpath(os.path.dirname(__file__)), '../'))

from RPi import GPIO

from relayboard import RelayBoard

def usage():
    print("Usage: relay FUNCTION STATUS\n\nexample:\n  relay wii on")
    print("supported functions:\n  ", RelayBoard.functions)
    sys.exit(1)

if len(sys.argv) != 3:
    usage()

rb = RelayBoard()

function = sys.argv[1]
status = sys.argv[2]

rb.set(function, status)

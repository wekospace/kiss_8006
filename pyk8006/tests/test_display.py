#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import time
from datetime import datetime

sys.path.append("../")
from k8006 import K8006
from k8006 import LedColor

fp = K8006()
fp.clear()

#  _____         _   
# |_   _|____  _| |_ 
#   | |/ _ \ \/ / __|
#   | |  __/>  <| |_ 
#   |_|\___/_/\_\\__|
#
fp.setText("Hello")
time.sleep(1)
fp.setFlashText(10, "Flash")
time.sleep(2)
fp.setRotatingText(1, 2, "This text will be displayed twice")
time.sleep(3)
fp.setText("123456789012")
time.sleep(1)
fp.setText("@&é\"'(§è!çà)")
time.sleep(1)
fp.setText("#-^$ù`,;:=_*")
time.sleep(1)
fp.setText("%£?./+€~|<>ë") # € is replaced
time.sleep(1)
fp.setText("“‘{¶«¡Çø}—É[")
time.sleep(1)
fp.setText("å»ÛÁØ]")
time.sleep(1)

#  _   _                           _      
# | \ | |_   _ _ __ ___   ___ _ __(_) ___ 
# |  \| | | | | '_ ` _ \ / _ \ '__| |/ __|
# | |\  | |_| | | | | | |  __/ |  | | (__ 
# |_| \_|\__,_|_| |_| |_|\___|_|  |_|\___|
#                                                                              
                                     
for i in range(0, 3):
    now = datetime.now()
    fp.setTime(now.strftime("0%H%M%S"))
    time.sleep(1)
fp.setTime(None)
time.sleep(1)

now = datetime.now()
fp.setTrackClock(now.strftime("0%H%M"))
time.sleep(1)
fp.setTrackClock(None)
time.sleep(1)

now = datetime.now()
fp.setClock(now.strftime("0%H%M"))
time.sleep(1)
fp.setClock(None)
time.sleep(1)

#  _             _ 
# | |    ___  __| |
# | |   / _ \/ _` |
# | |__|  __/ (_| |
# |_____\___|\__,_|
#                               

fp.setPowerLed(LedColor.red)
time.sleep(1)
fp.setPowerLed(LedColor.green)
time.sleep(1)
fp.setPowerLed(LedColor.orange)
time.sleep(1)
fp.setPowerLed(LedColor.off)
time.sleep(1)

#'VA' => All, only 'O' works after
#'VO' => Blank, only 'A' works after
#'VP' => Blank, unable to restart
#'CP' => device always reply 0xff after that
#blacklist = [ 
#    'VA', 'VO', 'VP',
#    'CP',
#]
#
#for i in range(ord('A'), ord('Z')+1):
#    command = 'V' + chr(i) + "0123456" 
#    if command[0:2] in blacklist:
#        print("blacklisted command: " + chr(i))
#        continue
#    print(command)
#    fp.setText(command)
#    fp.setClock('%0*d' % (5, i))
#    fp.setTrackClock('%0*d' % (5, i))
#    time.sleep(1)
#    print("---")
#    print(fp._lv.sendCommand(command))
#    print(fp._lv.sendRawData([0xaa] * 20))
#    print("---")
#    time.sleep(3)



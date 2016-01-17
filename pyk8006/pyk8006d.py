import RPi.GPIO as GPIO
import time

from k8006 import *

irq = 22
k8006 = K8006()

def read_inputs(pin):
    print "IRQ on:" + str(pin)
    print k8006.read_buttons()

GPIO.setmode(GPIO.BOARD)
GPIO.setup(irq,GPIO.IN)
GPIO.add_event_detect(irq, GPIO.FALLING, callback=read_inputs)

if(GPIO.input(irq) == 0):
    read_inputs("Zzz")

while True:
    time.sleep(1)
    #print "I'm alive !"
    print GPIO.input(irq)

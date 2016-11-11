EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:levelconverters
LIBS:raspberry_pi
LIBS:pikmm-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X11 P1
U 1 1 5707E9B7
P 7350 2100
F 0 "P1" H 7350 2700 50  0000 C CNN
F 1 "CONN_01X11" V 7450 2100 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-1110" H 7350 2100 50  0001 C CNN
F 3 "" H 7350 2100 50  0000 C CNN
	1    7350 2100
	1    0    0    -1  
$EndComp
Text Label 6700 2500 0    60   ~ 0
Brown
Text Label 6700 2400 0    60   ~ 0
Red
Text Label 6700 2300 0    60   ~ 0
Orange
Text Label 6700 2200 0    60   ~ 0
Yellow
Text Label 6700 2100 0    60   ~ 0
Green
Text Label 6700 2000 0    60   ~ 0
Blue
Text Label 6700 1900 0    60   ~ 0
Purple
Text Label 6700 1800 0    60   ~ 0
Grey
Text Label 6700 1700 0    60   ~ 0
White
Text Label 6700 2600 0    60   ~ 0
Black
Text Label 6700 1600 0    60   ~ 0
Black
$Comp
L GND #PWR01
U 1 1 5707EB12
P 6300 1600
F 0 "#PWR01" H 6300 1350 50  0001 C CNN
F 1 "GND" H 6300 1450 50  0000 C CNN
F 2 "" H 6300 1600 50  0000 C CNN
F 3 "" H 6300 1600 50  0000 C CNN
	1    6300 1600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 5707EB5A
P 6300 2600
F 0 "#PWR02" H 6300 2350 50  0001 C CNN
F 1 "GND" H 6300 2450 50  0000 C CNN
F 2 "" H 6300 2600 50  0000 C CNN
F 3 "" H 6300 2600 50  0000 C CNN
	1    6300 2600
	1    0    0    -1  
$EndComp
$Comp
L LevelConverter U1
U 1 1 5707FDA7
P 4450 1850
F 0 "U1" V 4100 1850 60  0000 C CNN
F 1 "LevelConverter" V 4000 1850 60  0000 C CNN
F 2 "DIP12_W5:DIP12_W5" H 4400 1800 60  0001 C CNN
F 3 "" H 4400 1800 60  0000 C CNN
	1    4450 1850
	0    1    1    0   
$EndComp
$Comp
L LevelConverter U2
U 1 1 5707FE09
P 4450 2550
F 0 "U2" V 4800 2550 60  0000 C CNN
F 1 "LevelConverter" V 4900 2550 60  0000 C CNN
F 2 "DIP12_W5:DIP12_W5" H 4400 2500 60  0001 C CNN
F 3 "" H 4400 2500 60  0000 C CNN
	1    4450 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5708065F
P 5000 2900
F 0 "#PWR03" H 5000 2650 50  0001 C CNN
F 1 "GND" H 5000 2750 50  0000 C CNN
F 2 "" H 5000 2900 50  0000 C CNN
F 3 "" H 5000 2900 50  0000 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 57080765
P 4900 1450
F 0 "#PWR04" H 4900 1300 50  0001 C CNN
F 1 "+5V" H 4900 1590 50  0000 C CNN
F 2 "" H 4900 1450 50  0000 C CNN
F 3 "" H 4900 1450 50  0000 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 5708081F
P 4000 1450
F 0 "#PWR05" H 4000 1300 50  0001 C CNN
F 1 "+3.3V" H 4000 1590 50  0000 C CNN
F 2 "" H 4000 1450 50  0000 C CNN
F 3 "" H 4000 1450 50  0000 C CNN
	1    4000 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 570808A5
P 3900 2900
F 0 "#PWR06" H 3900 2650 50  0001 C CNN
F 1 "GND" H 3900 2750 50  0000 C CNN
F 2 "" H 3900 2900 50  0000 C CNN
F 3 "" H 3900 2900 50  0000 C CNN
	1    3900 2900
	1    0    0    -1  
$EndComp
NoConn ~ 6550 1800
$Comp
L BPLUS_GPIO PI1
U 1 1 570802D8
P 1950 2100
F 0 "PI1" H 1850 2950 60  0000 C CNN
F 1 "BPLUS_GPIO" V 1850 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 1850 1900 60  0001 C CNN
F 3 "" H 1850 1900 60  0000 C CNN
	1    1950 2100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 570804F4
P 1200 1550
F 0 "#PWR07" H 1200 1400 50  0001 C CNN
F 1 "+5V" H 1200 1690 50  0000 C CNN
F 2 "" H 1200 1550 50  0000 C CNN
F 3 "" H 1200 1550 50  0000 C CNN
	1    1200 1550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 570805FB
P 950 1550
F 0 "#PWR08" H 950 1400 50  0001 C CNN
F 1 "+3.3V" H 950 1690 50  0000 C CNN
F 2 "" H 950 1550 50  0000 C CNN
F 3 "" H 950 1550 50  0000 C CNN
	1    950  1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2500 7150 2500
Wire Wire Line
	5500 2400 7150 2400
Wire Wire Line
	5400 2300 7150 2300
Wire Wire Line
	5300 2200 7150 2200
Wire Wire Line
	4850 2100 7150 2100
Wire Wire Line
	4850 2000 7150 2000
Wire Wire Line
	5300 1900 7150 1900
Wire Wire Line
	7150 1800 6550 1800
Wire Wire Line
	5400 1700 7150 1700
Wire Wire Line
	7150 1600 6300 1600
Wire Wire Line
	7150 2600 6300 2600
Wire Wire Line
	3300 2300 4050 2300
Wire Wire Line
	3400 2400 4050 2400
Wire Wire Line
	2300 2700 4050 2700
Wire Wire Line
	5600 2500 5600 2800
Wire Wire Line
	5600 2800 4850 2800
Wire Wire Line
	5500 2400 5500 2700
Wire Wire Line
	5500 2700 4850 2700
Wire Wire Line
	5400 2300 5400 2400
Wire Wire Line
	5400 2400 4850 2400
Wire Wire Line
	5300 2200 5300 2300
Wire Wire Line
	5300 2300 4850 2300
Wire Wire Line
	5300 1900 5300 1700
Wire Wire Line
	5300 1700 4850 1700
Wire Wire Line
	5400 1700 5400 1600
Wire Wire Line
	5400 1600 4850 1600
Wire Wire Line
	4850 2600 5000 2600
Wire Wire Line
	5000 1900 5000 2900
Wire Wire Line
	4850 1900 5000 1900
Connection ~ 5000 2600
Wire Wire Line
	4900 2500 4850 2500
Wire Wire Line
	4900 1450 4900 2500
Wire Wire Line
	4900 1800 4850 1800
Connection ~ 4900 1800
Wire Wire Line
	4000 2500 4050 2500
Wire Wire Line
	4000 1450 4000 2500
Wire Wire Line
	4000 1800 4050 1800
Connection ~ 4000 1800
Wire Wire Line
	4050 1900 3900 1900
Wire Wire Line
	3900 1900 3900 2900
Wire Wire Line
	3900 2600 4050 2600
Connection ~ 3900 2600
Wire Wire Line
	1400 1800 1400 1500
Wire Wire Line
	1200 2600 950  2600
Wire Wire Line
	4050 2800 3200 2800
Wire Wire Line
	3200 2800 3200 1700
Wire Wire Line
	3200 1700 2300 1700
Wire Wire Line
	2300 1700 2300 1800
Wire Wire Line
	2300 2700 2300 2600
Wire Wire Line
	3300 2300 3300 2900
Wire Wire Line
	3300 2900 2200 2900
Wire Wire Line
	2200 2900 2200 2600
Wire Wire Line
	2100 2600 2100 3000
Wire Wire Line
	2100 3000 3400 3000
Wire Wire Line
	3400 3000 3400 2400
Wire Wire Line
	2400 2600 2400 3100
Wire Wire Line
	3100 2600 3100 3250
Wire Wire Line
	2600 1450 2600 1800
Wire Wire Line
	1600 2600 1600 3100
$Comp
L GND #PWR09
U 1 1 57081435
P 3100 3250
F 0 "#PWR09" H 3100 3000 50  0001 C CNN
F 1 "GND" H 3100 3100 50  0000 C CNN
F 2 "" H 3100 3250 50  0000 C CNN
F 3 "" H 3100 3250 50  0000 C CNN
	1    3100 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5708144C
P 2400 3100
F 0 "#PWR010" H 2400 2850 50  0001 C CNN
F 1 "GND" H 2400 2950 50  0000 C CNN
F 2 "" H 2400 3100 50  0000 C CNN
F 3 "" H 2400 3100 50  0000 C CNN
	1    2400 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57081463
P 1600 3100
F 0 "#PWR011" H 1600 2850 50  0001 C CNN
F 1 "GND" H 1600 2950 50  0000 C CNN
F 2 "" H 1600 3100 50  0000 C CNN
F 3 "" H 1600 3100 50  0000 C CNN
	1    1600 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 570814A8
P 2600 1450
F 0 "#PWR012" H 2600 1200 50  0001 C CNN
F 1 "GND" H 2600 1300 50  0000 C CNN
F 2 "" H 2600 1450 50  0000 C CNN
F 3 "" H 2600 1450 50  0000 C CNN
	1    2600 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 1500 2800 1800
Wire Wire Line
	1400 1500 2800 1500
Connection ~ 2600 1500
Connection ~ 2100 1500
Connection ~ 1800 1500
Wire Wire Line
	1800 1800 1800 1500
Wire Wire Line
	2100 1800 2100 1500
NoConn ~ 1500 1800
NoConn ~ 1600 1800
NoConn ~ 1700 1800
NoConn ~ 1900 1800
NoConn ~ 2000 1800
NoConn ~ 2700 1800
NoConn ~ 1900 2600
Wire Wire Line
	950  1550 950  2700
Wire Wire Line
	1200 1550 1200 1800
Wire Wire Line
	1300 1800 1300 1700
Wire Wire Line
	1300 1700 1200 1700
Connection ~ 1200 1700
$Comp
L PWR_FLAG #FLG013
U 1 1 57082A44
P 1300 1700
F 0 "#FLG013" H 1300 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 1880 50  0000 C CNN
F 2 "" H 1300 1700 50  0000 C CNN
F 3 "" H 1300 1700 50  0000 C CNN
	1    1300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2600 2000 2700
Wire Wire Line
	2000 2700 950  2700
Connection ~ 950  2600
$Comp
L CONN_01X02 P2
U 1 1 5708DA71
P 1250 4850
F 0 "P2" H 1250 5000 50  0000 C CNN
F 1 "CONN_01X02" V 1350 4850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1250 4850 50  0001 C CNN
F 3 "" H 1250 4850 50  0000 C CNN
	1    1250 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 4650 1300 4500
Wire Wire Line
	1200 4650 1200 4500
$Comp
L +5V #PWR014
U 1 1 5708DBC9
P 1200 4500
F 0 "#PWR014" H 1200 4350 50  0001 C CNN
F 1 "+5V" H 1200 4640 50  0000 C CNN
F 2 "" H 1200 4500 50  0000 C CNN
F 3 "" H 1200 4500 50  0000 C CNN
	1    1200 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5708DBE7
P 1400 4550
F 0 "#PWR015" H 1400 4300 50  0001 C CNN
F 1 "GND" H 1400 4400 50  0000 C CNN
F 2 "" H 1400 4550 50  0000 C CNN
F 3 "" H 1400 4550 50  0000 C CNN
	1    1400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4500 1400 4500
Wire Wire Line
	1400 4500 1400 4550
Wire Wire Line
	1700 3900 3050 3900
Wire Wire Line
	1500 2600 1500 4300
Wire Wire Line
	1500 4300 3050 4300
Wire Wire Line
	2600 2600 2600 4100
Wire Wire Line
	2600 4100 3050 4100
Wire Wire Line
	2700 2600 2700 4000
Wire Wire Line
	2700 4000 3050 4000
Wire Wire Line
	2400 1800 2400 1050
Wire Wire Line
	2400 1050 3050 1050
Text Label 3600 2700 0    60   ~ 0
SCLK
Text Label 3600 2800 0    60   ~ 0
/SS
Text Label 3600 2400 0    60   ~ 0
MOSI
Text Label 3600 2300 0    60   ~ 0
MISO
Text Label 3600 2000 0    60   ~ 0
REQ
Wire Wire Line
	3500 2000 3500 3100
Wire Wire Line
	3500 3100 3000 3100
Wire Wire Line
	3000 3100 3000 2600
Wire Wire Line
	3500 2000 4050 2000
NoConn ~ 1300 2600
NoConn ~ 1400 2600
NoConn ~ 2200 1800
Text Label 2750 4300 0    60   ~ 0
RB_EN
Text Label 2900 4200 0    60   ~ 0
IN1
Text Label 2900 4100 0    60   ~ 0
IN2
Text Label 2900 4000 0    60   ~ 0
IN3
Text Label 2900 1050 0    60   ~ 0
IN5
Text Label 2900 3900 0    60   ~ 0
IN4
$Comp
L CONN_01X10 P3
U 1 1 5708FC04
P 6250 4350
F 0 "P3" H 6250 4900 50  0000 C CNN
F 1 "CONN_01X10" V 6350 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 6250 4350 50  0001 C CNN
F 3 "" H 6250 4350 50  0000 C CNN
	1    6250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3900 6050 3900
Wire Wire Line
	6050 4000 5650 4000
Wire Wire Line
	6050 4100 5650 4100
Wire Wire Line
	6050 4200 5650 4200
Wire Wire Line
	6050 4300 5650 4300
Wire Wire Line
	6050 4400 5650 4400
Wire Wire Line
	6050 4500 5650 4500
$Comp
L GND #PWR016
U 1 1 57090222
P 5450 4000
F 0 "#PWR016" H 5450 3750 50  0001 C CNN
F 1 "GND" H 5450 3850 50  0000 C CNN
F 2 "" H 5450 4000 50  0000 C CNN
F 3 "" H 5450 4000 50  0000 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
Text Label 5650 4100 0    60   ~ 0
IN1
Text Label 5650 4200 0    60   ~ 0
IN2
Text Label 5650 4300 0    60   ~ 0
IN3
Text Label 5650 4400 0    60   ~ 0
IN4
Text Label 5650 4500 0    60   ~ 0
IN5
Text Label 5650 4600 0    60   ~ 0
IN6
Wire Wire Line
	5450 3900 5450 4000
$Comp
L CONN_01X04 P4
U 1 1 57090748
P 8400 3800
F 0 "P4" H 8400 4050 50  0000 C CNN
F 1 "CONN_USB" V 8500 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.00mm" H 8400 3800 50  0001 C CNN
F 3 "" H 8400 3800 50  0000 C CNN
	1    8400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3650 8200 3650
Wire Wire Line
	7800 3750 8200 3750
Wire Wire Line
	7900 3850 8200 3850
$Comp
L CONN_01X04 P5
U 1 1 570909B6
P 8400 3100
F 0 "P5" H 8400 3350 50  0000 C CNN
F 1 "CONN_01X04" V 8500 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 8400 3100 50  0001 C CNN
F 3 "" H 8400 3100 50  0000 C CNN
	1    8400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3750 7800 3050
Wire Wire Line
	7800 3050 8200 3050
Wire Wire Line
	7900 3850 7900 3150
Wire Wire Line
	7900 3150 8200 3150
Wire Wire Line
	8200 3950 8000 3950
Wire Wire Line
	8000 3950 8000 3250
Wire Wire Line
	8000 3250 8200 3250
Wire Wire Line
	7700 3650 7700 3750
Wire Wire Line
	8200 2950 7700 2950
Wire Wire Line
	7700 2950 7700 3050
$Comp
L GND #PWR018
U 1 1 57090CBB
P 7700 3050
F 0 "#PWR018" H 7700 2800 50  0001 C CNN
F 1 "GND" H 7700 2900 50  0000 C CNN
F 2 "" H 7700 3050 50  0000 C CNN
F 3 "" H 7700 3050 50  0000 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 57090CDF
P 7700 3750
F 0 "#PWR019" H 7700 3500 50  0001 C CNN
F 1 "GND" H 7700 3600 50  0000 C CNN
F 2 "" H 7700 3750 50  0000 C CNN
F 3 "" H 7700 3750 50  0000 C CNN
	1    7700 3750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P6
U 1 1 57090E5F
P 7450 4550
F 0 "P6" H 7450 4750 50  0000 C CNN
F 1 "CONN_01X03" V 7550 4550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7450 4550 50  0001 C CNN
F 3 "" H 7450 4550 50  0000 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4450 7000 4450
Wire Wire Line
	7000 4450 7000 4300
Wire Wire Line
	7250 4550 7000 4550
Wire Wire Line
	7000 4550 7000 4900
Wire Wire Line
	7250 4650 7100 4650
Wire Wire Line
	7100 4650 7100 5150
$Comp
L GND #PWR020
U 1 1 57091094
P 7000 4300
F 0 "#PWR020" H 7000 4050 50  0001 C CNN
F 1 "GND" H 7000 4150 50  0000 C CNN
F 2 "" H 7000 4300 50  0000 C CNN
F 3 "" H 7000 4300 50  0000 C CNN
	1    7000 4300
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 570910BA
P 7000 4900
F 0 "#PWR021" H 7000 4750 50  0001 C CNN
F 1 "+3.3V" H 7000 5040 50  0000 C CNN
F 2 "" H 7000 4900 50  0000 C CNN
F 3 "" H 7000 4900 50  0000 C CNN
	1    7000 4900
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR022
U 1 1 570910E0
P 7100 5150
F 0 "#PWR022" H 7100 5000 50  0001 C CNN
F 1 "+5V" H 7100 5290 50  0000 C CNN
F 2 "" H 7100 5150 50  0000 C CNN
F 3 "" H 7100 5150 50  0000 C CNN
	1    7100 5150
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 570913AC
P 950 1950
F 0 "#FLG?" H 950 2045 50  0001 C CNN
F 1 "PWR_FLAG" H 950 2130 50  0000 C CNN
F 2 "" H 950 1950 50  0000 C CNN
F 3 "" H 950 1950 50  0000 C CNN
	1    950  1950
	0    -1   -1   0   
$EndComp
NoConn ~ 2900 1800
NoConn ~ 3000 1800
NoConn ~ 4050 2100
NoConn ~ 4050 1700
NoConn ~ 4050 1600
Wire Wire Line
	1800 4200 3050 4200
Wire Wire Line
	2800 2600 2800 3700
Wire Wire Line
	2800 3700 3050 3700
Wire Wire Line
	2900 2600 2900 3600
Wire Wire Line
	2900 3600 3050 3600
Text Label 2900 3700 0    60   ~ 0
IN6
Text Label 2900 3600 0    60   ~ 0
IN7
Wire Wire Line
	3100 1800 3100 1500
Wire Wire Line
	3100 1500 3400 1500
Text Label 3100 1500 0    60   ~ 0
IN8
NoConn ~ 2500 1800
NoConn ~ 2500 2600
Wire Wire Line
	1800 2600 1800 4200
Wire Wire Line
	1700 3900 1700 2600
Wire Wire Line
	6050 4600 5650 4600
Wire Wire Line
	6050 4700 5650 4700
Wire Wire Line
	6050 4800 5650 4800
Text Label 5650 4700 0    60   ~ 0
IN7
Text Label 5650 4800 0    60   ~ 0
IN8
Text Label 5650 4000 0    60   ~ 0
RB_EN
$EndSCHEMATC

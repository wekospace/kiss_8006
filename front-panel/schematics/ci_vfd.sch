EESchema Schematic File Version 2
LIBS:TSOP38238
LIBS:ci_vfd-cache
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
L SW_PUSH SW4
U 1 1 5659EF9A
P 9000 1550
F 0 "SW4" H 9150 1660 50  0000 C CNN
F 1 "Up" H 9000 1470 50  0000 C CNN
F 2 "" H 9000 1550 60  0000 C CNN
F 3 "" H 9000 1550 60  0000 C CNN
	1    9000 1550
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW5
U 1 1 5659F15A
P 9000 2000
F 0 "SW5" H 9150 2110 50  0000 C CNN
F 1 "Ok" H 9000 1920 50  0000 C CNN
F 2 "" H 9000 2000 60  0000 C CNN
F 3 "" H 9000 2000 60  0000 C CNN
	1    9000 2000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 5659F1BE
P 9000 2400
F 0 "SW3" H 9150 2510 50  0000 C CNN
F 1 "Down" H 9000 2320 50  0000 C CNN
F 2 "" H 9000 2400 60  0000 C CNN
F 3 "" H 9000 2400 60  0000 C CNN
	1    9000 2400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW6
U 1 1 5659F1FB
P 8000 2000
F 0 "SW6" H 8150 2110 50  0000 C CNN
F 1 "Left" H 8000 1920 50  0000 C CNN
F 2 "" H 8000 2000 60  0000 C CNN
F 3 "" H 8000 2000 60  0000 C CNN
	1    8000 2000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW7
U 1 1 5659F23B
P 7250 2000
F 0 "SW7" H 7400 2110 50  0000 C CNN
F 1 "Back" H 7250 1920 50  0000 C CNN
F 2 "" H 7250 2000 60  0000 C CNN
F 3 "" H 7250 2000 60  0000 C CNN
	1    7250 2000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5659F280
P 9900 2000
F 0 "SW2" H 10050 2110 50  0000 C CNN
F 1 "Right" H 9900 1920 50  0000 C CNN
F 2 "" H 9900 2000 60  0000 C CNN
F 3 "" H 9900 2000 60  0000 C CNN
	1    9900 2000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5659F2D4
P 10750 2000
F 0 "SW1" H 10900 2110 50  0000 C CNN
F 1 "Menu" H 10750 1920 50  0000 C CNN
F 2 "" H 10750 2000 60  0000 C CNN
F 3 "" H 10750 2000 60  0000 C CNN
	1    10750 2000
	1    0    0    -1  
$EndComp
Text Label 5900 1300 0    60   ~ 0
KM1
$Comp
L ATMEGA88-A U4
U 1 1 5659F4B5
P 1900 1850
F 0 "U4" H 1150 3100 40  0000 L BNN
F 1 "ATMEGA88-A" H 2350 450 40  0000 L BNN
F 2 "TQFP32" H 1900 1850 30  0000 C CIN
F 3 "" H 1900 1850 60  0000 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X11 J1
U 1 1 5659F5AE
P 3500 6950
F 0 "J1" H 3500 7550 50  0000 C CNN
F 1 "CONN_01X11" V 3600 6950 50  0000 C CNN
F 2 "" H 3500 6950 60  0000 C CNN
F 3 "" H 3500 6950 60  0000 C CNN
	1    3500 6950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5659F77C
P 4000 7550
F 0 "#PWR01" H 4000 7300 50  0001 C CNN
F 1 "GND" H 4000 7400 50  0000 C CNN
F 2 "" H 4000 7550 60  0000 C CNN
F 3 "" H 4000 7550 60  0000 C CNN
	1    4000 7550
	1    0    0    -1  
$EndComp
Text Label 3900 7600 1    60   ~ 0
White
$Comp
L R R48
U 1 1 5659F8F2
P 5400 4950
F 0 "R48" V 5480 4950 50  0000 C CNN
F 1 "10k" V 5400 4950 50  0000 C CNN
F 2 "" V 5330 4950 30  0000 C CNN
F 3 "" H 5400 4950 30  0000 C CNN
	1    5400 4950
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5659F947
P 4800 5350
F 0 "C5" H 4825 5450 50  0000 L CNN
F 1 "C" H 4825 5250 50  0000 L CNN
F 2 "" H 4838 5200 30  0000 C CNN
F 3 "" H 4800 5350 60  0000 C CNN
	1    4800 5350
	1    0    0    -1  
$EndComp
$Comp
L L_Small E9
U 1 1 5659F9C6
P 5150 5200
F 0 "E9" H 5180 5240 50  0000 L CNN
F 1 "L_Small" H 5180 5160 50  0000 L CNN
F 2 "" H 5150 5200 60  0000 C CNN
F 3 "" H 5150 5200 60  0000 C CNN
	1    5150 5200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5659FAA0
P 4800 5500
F 0 "#PWR02" H 4800 5250 50  0001 C CNN
F 1 "GND" H 4800 5350 50  0000 C CNN
F 2 "" H 4800 5500 60  0000 C CNN
F 3 "" H 4800 5500 60  0000 C CNN
	1    4800 5500
	1    0    0    -1  
$EndComp
Text Label 4350 5200 0    60   ~ 0
White
$Comp
L C C37
U 1 1 5659FCD0
P 5400 5350
F 0 "C37" H 5425 5450 50  0000 L CNN
F 1 "C" H 5425 5250 50  0000 L CNN
F 2 "" H 5438 5200 30  0000 C CNN
F 3 "" H 5400 5350 60  0000 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5659FD27
P 5400 5500
F 0 "#PWR03" H 5400 5250 50  0001 C CNN
F 1 "GND" H 5400 5350 50  0000 C CNN
F 2 "" H 5400 5500 60  0000 C CNN
F 3 "" H 5400 5500 60  0000 C CNN
	1    5400 5500
	1    0    0    -1  
$EndComp
Text Label 800  1050 0    60   ~ 0
AVCC
Text Label 5400 4550 3    60   ~ 0
AVCC
$Comp
L R R15
U 1 1 565A0496
P 5800 5200
F 0 "R15" V 5880 5200 50  0000 C CNN
F 1 "0" V 5800 5200 50  0000 C CNN
F 2 "" V 5730 5200 30  0000 C CNN
F 3 "" H 5800 5200 30  0000 C CNN
	1    5800 5200
	0    1    1    0   
$EndComp
Text Label 6200 5200 2    60   ~ 0
AT22
Text Label 3800 7600 1    60   ~ 0
Grey
NoConn ~ 3800 7600
Text Label 3700 7600 1    60   ~ 0
Purple
$Comp
L R R11
U 1 1 565A1060
P 3800 6100
F 0 "R11" V 3880 6100 50  0000 C CNN
F 1 "1k" V 3800 6100 50  0000 C CNN
F 2 "" V 3730 6100 30  0000 C CNN
F 3 "" H 3800 6100 30  0000 C CNN
	1    3800 6100
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 565A1066
P 3200 6500
F 0 "C4" H 3225 6600 50  0000 L CNN
F 1 "C" H 3225 6400 50  0000 L CNN
F 2 "" H 3238 6350 30  0000 C CNN
F 3 "" H 3200 6500 60  0000 C CNN
	1    3200 6500
	1    0    0    -1  
$EndComp
$Comp
L L_Small E7
U 1 1 565A106C
P 3550 6350
F 0 "E7" H 3580 6390 50  0000 L CNN
F 1 "L_Small" H 3580 6310 50  0000 L CNN
F 2 "" H 3550 6350 60  0000 C CNN
F 3 "" H 3550 6350 60  0000 C CNN
	1    3550 6350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 565A1072
P 3200 6650
F 0 "#PWR04" H 3200 6400 50  0001 C CNN
F 1 "GND" H 3200 6500 50  0000 C CNN
F 2 "" H 3200 6650 60  0000 C CNN
F 3 "" H 3200 6650 60  0000 C CNN
	1    3200 6650
	1    0    0    -1  
$EndComp
Text Label 2750 6350 0    60   ~ 0
Purple
$Comp
L C C33
U 1 1 565A1079
P 3800 6500
F 0 "C33" H 3825 6600 50  0000 L CNN
F 1 "C" H 3825 6400 50  0000 L CNN
F 2 "" H 3838 6350 30  0000 C CNN
F 3 "" H 3800 6500 60  0000 C CNN
	1    3800 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 565A107F
P 3800 6650
F 0 "#PWR05" H 3800 6400 50  0001 C CNN
F 1 "GND" H 3800 6500 50  0000 C CNN
F 2 "" H 3800 6650 60  0000 C CNN
F 3 "" H 3800 6650 60  0000 C CNN
	1    3800 6650
	1    0    0    -1  
$EndComp
Text Label 3800 5700 3    60   ~ 0
AVCC
Text Label 4050 6350 2    60   ~ 0
AT2
Text Label 3150 2750 2    60   ~ 0
AT2
Text Label 3600 7600 1    60   ~ 0
Blue
$Comp
L R R17
U 1 1 565A2C11
P 3800 4950
F 0 "R17" V 3880 4950 50  0000 C CNN
F 1 "10k" V 3800 4950 50  0000 C CNN
F 2 "" V 3730 4950 30  0000 C CNN
F 3 "" H 3800 4950 30  0000 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 565A2C17
P 3200 5350
F 0 "C6" H 3225 5450 50  0000 L CNN
F 1 "C" H 3225 5250 50  0000 L CNN
F 2 "" H 3238 5200 30  0000 C CNN
F 3 "" H 3200 5350 60  0000 C CNN
	1    3200 5350
	1    0    0    -1  
$EndComp
$Comp
L L_Small E2
U 1 1 565A2C1D
P 3550 5200
F 0 "E2" H 3580 5240 50  0000 L CNN
F 1 "L_Small" H 3580 5160 50  0000 L CNN
F 2 "" H 3550 5200 60  0000 C CNN
F 3 "" H 3550 5200 60  0000 C CNN
	1    3550 5200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 565A2C23
P 3200 5500
F 0 "#PWR06" H 3200 5250 50  0001 C CNN
F 1 "GND" H 3200 5350 50  0000 C CNN
F 2 "" H 3200 5500 60  0000 C CNN
F 3 "" H 3200 5500 60  0000 C CNN
	1    3200 5500
	1    0    0    -1  
$EndComp
Text Label 2750 5200 0    60   ~ 0
Blue
$Comp
L C C35
U 1 1 565A2C2A
P 3800 5350
F 0 "C35" H 3825 5450 50  0000 L CNN
F 1 "C" H 3825 5250 50  0000 L CNN
F 2 "" H 3838 5200 30  0000 C CNN
F 3 "" H 3800 5350 60  0000 C CNN
	1    3800 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 565A2C30
P 3800 5500
F 0 "#PWR07" H 3800 5250 50  0001 C CNN
F 1 "GND" H 3800 5350 50  0000 C CNN
F 2 "" H 3800 5500 60  0000 C CNN
F 3 "" H 3800 5500 60  0000 C CNN
	1    3800 5500
	1    0    0    -1  
$EndComp
Text Label 3800 4550 3    60   ~ 0
AVCC
Text Label 4050 5200 2    60   ~ 0
REQ
Text Label 3150 1900 2    60   ~ 0
AT26
Text Label 3500 7600 1    60   ~ 0
Green
$Comp
L R R21
U 1 1 565A3C80
P 4050 4050
F 0 "R21" V 4130 4050 50  0000 C CNN
F 1 "100k" V 4050 4050 50  0000 C CNN
F 2 "" V 3980 4050 30  0000 C CNN
F 3 "" H 4050 4050 30  0000 C CNN
	1    4050 4050
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 565A3C86
P 3200 4050
F 0 "C3" H 3225 4150 50  0000 L CNN
F 1 "C" H 3225 3950 50  0000 L CNN
F 2 "" H 3238 3900 30  0000 C CNN
F 3 "" H 3200 4050 60  0000 C CNN
	1    3200 4050
	1    0    0    -1  
$EndComp
$Comp
L L_Small E6
U 1 1 565A3C8C
P 3550 3900
F 0 "E6" H 3580 3940 50  0000 L CNN
F 1 "L_Small" H 3580 3860 50  0000 L CNN
F 2 "" H 3550 3900 60  0000 C CNN
F 3 "" H 3550 3900 60  0000 C CNN
	1    3550 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 565A3C92
P 3200 4200
F 0 "#PWR08" H 3200 3950 50  0001 C CNN
F 1 "GND" H 3200 4050 50  0000 C CNN
F 2 "" H 3200 4200 60  0000 C CNN
F 3 "" H 3200 4200 60  0000 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
Text Label 2750 3900 0    60   ~ 0
Green
$Comp
L C C34
U 1 1 565A3C99
P 3800 4050
F 0 "C34" H 3825 4150 50  0000 L CNN
F 1 "C" H 3825 3950 50  0000 L CNN
F 2 "" H 3838 3900 30  0000 C CNN
F 3 "" H 3800 4050 60  0000 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 565A3C9F
P 3800 4350
F 0 "#PWR09" H 3800 4100 50  0001 C CNN
F 1 "GND" H 3800 4200 50  0000 C CNN
F 2 "" H 3800 4350 60  0000 C CNN
F 3 "" H 3800 4350 60  0000 C CNN
	1    3800 4350
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 565A3CAB
P 4300 3900
F 0 "R19" V 4380 3900 50  0000 C CNN
F 1 "10k" V 4300 3900 50  0000 C CNN
F 2 "" V 4230 3900 30  0000 C CNN
F 3 "" H 4300 3900 30  0000 C CNN
	1    4300 3900
	0    1    1    0   
$EndComp
Text Label 600  2200 0    60   ~ 0
AT22
$Comp
L Q_NPN_BCE Q1
U 1 1 565A508F
P 4700 3900
F 0 "Q1" H 5000 3950 50  0000 R CNN
F 1 "Q_NPN_BCE" H 5300 3850 50  0000 R CNN
F 2 "" H 4900 4000 29  0000 C CNN
F 3 "" H 4700 3900 60  0000 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 565A51D0
P 4800 4150
F 0 "#PWR010" H 4800 3900 50  0001 C CNN
F 1 "GND" H 4800 4000 50  0000 C CNN
F 2 "" H 4800 4150 60  0000 C CNN
F 3 "" H 4800 4150 60  0000 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
Text Label 4450 3250 0    60   ~ 0
RESET
$Comp
L C C16
U 1 1 565A549B
P 5350 3900
F 0 "C16" H 5375 4000 50  0000 L CNN
F 1 "C" H 5375 3800 50  0000 L CNN
F 2 "" H 5388 3750 30  0000 C CNN
F 3 "" H 5350 3900 60  0000 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
Text Label 3400 7600 1    60   ~ 0
Yellow
$Comp
L C C7
U 1 1 565A5A1A
P 1000 7200
F 0 "C7" H 1025 7300 50  0000 L CNN
F 1 "C" H 1025 7100 50  0000 L CNN
F 2 "" H 1038 7050 30  0000 C CNN
F 3 "" H 1000 7200 60  0000 C CNN
	1    1000 7200
	1    0    0    -1  
$EndComp
$Comp
L L_Small E5
U 1 1 565A5A20
P 1350 7050
F 0 "E5" H 1380 7090 50  0000 L CNN
F 1 "L_Small" H 1380 7010 50  0000 L CNN
F 2 "" H 1350 7050 60  0000 C CNN
F 3 "" H 1350 7050 60  0000 C CNN
	1    1350 7050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 565A5A26
P 1000 7350
F 0 "#PWR012" H 1000 7100 50  0001 C CNN
F 1 "GND" H 1000 7200 50  0000 C CNN
F 2 "" H 1000 7350 60  0000 C CNN
F 3 "" H 1000 7350 60  0000 C CNN
	1    1000 7350
	1    0    0    -1  
$EndComp
Text Label 550  7050 0    60   ~ 0
Yellow
$Comp
L C C38
U 1 1 565A5A2D
P 1600 7200
F 0 "C38" H 1625 7300 50  0000 L CNN
F 1 "C" H 1625 7100 50  0000 L CNN
F 2 "" H 1638 7050 30  0000 C CNN
F 3 "" H 1600 7200 60  0000 C CNN
	1    1600 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 565A5A33
P 1600 7350
F 0 "#PWR013" H 1600 7100 50  0001 C CNN
F 1 "GND" H 1600 7200 50  0000 C CNN
F 2 "" H 1600 7350 60  0000 C CNN
F 3 "" H 1600 7350 60  0000 C CNN
	1    1600 7350
	1    0    0    -1  
$EndComp
Text Label 5900 1700 0    60   ~ 0
KM2
Text Label 1850 7050 2    60   ~ 0
MISO
Text Label 5900 1800 0    60   ~ 0
KM3
$Comp
L R R5
U 1 1 565A67D3
P 1600 5950
F 0 "R5" V 1680 5950 50  0000 C CNN
F 1 "10k" V 1600 5950 50  0000 C CNN
F 2 "" V 1530 5950 30  0000 C CNN
F 3 "" H 1600 5950 30  0000 C CNN
	1    1600 5950
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 565A67D9
P 1000 6350
F 0 "C2" H 1025 6450 50  0000 L CNN
F 1 "C" H 1025 6250 50  0000 L CNN
F 2 "" H 1038 6200 30  0000 C CNN
F 3 "" H 1000 6350 60  0000 C CNN
	1    1000 6350
	1    0    0    -1  
$EndComp
$Comp
L L_Small E4
U 1 1 565A67DF
P 1350 6200
F 0 "E4" H 1380 6240 50  0000 L CNN
F 1 "L_Small" H 1380 6160 50  0000 L CNN
F 2 "" H 1350 6200 60  0000 C CNN
F 3 "" H 1350 6200 60  0000 C CNN
	1    1350 6200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR014
U 1 1 565A67E5
P 1000 6500
F 0 "#PWR014" H 1000 6250 50  0001 C CNN
F 1 "GND" H 1000 6350 50  0000 C CNN
F 2 "" H 1000 6500 60  0000 C CNN
F 3 "" H 1000 6500 60  0000 C CNN
	1    1000 6500
	1    0    0    -1  
$EndComp
Text Label 550  6200 0    60   ~ 0
Orange
$Comp
L C C31
U 1 1 565A67EC
P 1600 6350
F 0 "C31" H 1625 6450 50  0000 L CNN
F 1 "C" H 1625 6250 50  0000 L CNN
F 2 "" H 1638 6200 30  0000 C CNN
F 3 "" H 1600 6350 60  0000 C CNN
	1    1600 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 565A67F2
P 1600 6500
F 0 "#PWR015" H 1600 6250 50  0001 C CNN
F 1 "GND" H 1600 6350 50  0000 C CNN
F 2 "" H 1600 6500 60  0000 C CNN
F 3 "" H 1600 6500 60  0000 C CNN
	1    1600 6500
	1    0    0    -1  
$EndComp
Text Label 1600 5550 3    60   ~ 0
AVCC
$Comp
L R R4
U 1 1 565A67F9
P 2000 6200
F 0 "R4" V 2080 6200 50  0000 C CNN
F 1 "1k" V 2000 6200 50  0000 C CNN
F 2 "" V 1930 6200 30  0000 C CNN
F 3 "" H 2000 6200 30  0000 C CNN
	1    2000 6200
	0    1    1    0   
$EndComp
Text Label 2400 6200 2    60   ~ 0
MOSI
Text Label 3300 7600 1    60   ~ 0
Orange
Text Label 5900 1900 0    60   ~ 0
KM4
Text Label 5900 2550 0    60   ~ 0
KM5
Text Label 3200 7600 1    60   ~ 0
Red
$Comp
L R R1
U 1 1 565A7EAD
P 1600 4800
F 0 "R1" V 1680 4800 50  0000 C CNN
F 1 "10k" V 1600 4800 50  0000 C CNN
F 2 "" V 1530 4800 30  0000 C CNN
F 3 "" H 1600 4800 30  0000 C CNN
	1    1600 4800
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 565A7EB3
P 1000 5200
F 0 "C8" H 1025 5300 50  0000 L CNN
F 1 "C" H 1025 5100 50  0000 L CNN
F 2 "" H 1038 5050 30  0000 C CNN
F 3 "" H 1000 5200 60  0000 C CNN
	1    1000 5200
	1    0    0    -1  
$EndComp
$Comp
L L_Small E1
U 1 1 565A7EB9
P 1350 5050
F 0 "E1" H 1380 5090 50  0000 L CNN
F 1 "L_Small" H 1380 5010 50  0000 L CNN
F 2 "" H 1350 5050 60  0000 C CNN
F 3 "" H 1350 5050 60  0000 C CNN
	1    1350 5050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR016
U 1 1 565A7EBF
P 1000 5350
F 0 "#PWR016" H 1000 5100 50  0001 C CNN
F 1 "GND" H 1000 5200 50  0000 C CNN
F 2 "" H 1000 5350 60  0000 C CNN
F 3 "" H 1000 5350 60  0000 C CNN
	1    1000 5350
	1    0    0    -1  
$EndComp
Text Label 550  5050 0    60   ~ 0
Red
$Comp
L C C30
U 1 1 565A7EC6
P 1600 5200
F 0 "C30" H 1625 5300 50  0000 L CNN
F 1 "C" H 1625 5100 50  0000 L CNN
F 2 "" H 1638 5050 30  0000 C CNN
F 3 "" H 1600 5200 60  0000 C CNN
	1    1600 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 565A7ECC
P 1600 5350
F 0 "#PWR017" H 1600 5100 50  0001 C CNN
F 1 "GND" H 1600 5200 50  0000 C CNN
F 2 "" H 1600 5350 60  0000 C CNN
F 3 "" H 1600 5350 60  0000 C CNN
	1    1600 5350
	1    0    0    -1  
$EndComp
Text Label 1600 4400 3    60   ~ 0
AVCC
$Comp
L R R3
U 1 1 565A7ED3
P 2000 5050
F 0 "R3" V 2080 5050 50  0000 C CNN
F 1 "1k" V 2000 5050 50  0000 C CNN
F 2 "" V 1930 5050 30  0000 C CNN
F 3 "" H 2000 5050 30  0000 C CNN
	1    2000 5050
	0    1    1    0   
$EndComp
Text Label 2400 5050 2    60   ~ 0
SCK
$Comp
L R R2
U 1 1 565A8762
P 1600 3650
F 0 "R2" V 1680 3650 50  0000 C CNN
F 1 "10k" V 1600 3650 50  0000 C CNN
F 2 "" V 1530 3650 30  0000 C CNN
F 3 "" H 1600 3650 30  0000 C CNN
	1    1600 3650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 565A8768
P 1000 4050
F 0 "C1" H 1025 4150 50  0000 L CNN
F 1 "C" H 1025 3950 50  0000 L CNN
F 2 "" H 1038 3900 30  0000 C CNN
F 3 "" H 1000 4050 60  0000 C CNN
	1    1000 4050
	1    0    0    -1  
$EndComp
$Comp
L L_Small E3
U 1 1 565A876E
P 1350 3900
F 0 "E3" H 1380 3940 50  0000 L CNN
F 1 "L_Small" H 1380 3860 50  0000 L CNN
F 2 "" H 1350 3900 60  0000 C CNN
F 3 "" H 1350 3900 60  0000 C CNN
	1    1350 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 565A8774
P 1000 4200
F 0 "#PWR018" H 1000 3950 50  0001 C CNN
F 1 "GND" H 1000 4050 50  0000 C CNN
F 2 "" H 1000 4200 60  0000 C CNN
F 3 "" H 1000 4200 60  0000 C CNN
	1    1000 4200
	1    0    0    -1  
$EndComp
Text Label 550  3900 0    60   ~ 0
Brown
$Comp
L C C32
U 1 1 565A877B
P 1600 4050
F 0 "C32" H 1625 4150 50  0000 L CNN
F 1 "C" H 1625 3950 50  0000 L CNN
F 2 "" H 1638 3900 30  0000 C CNN
F 3 "" H 1600 4050 60  0000 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 565A8781
P 1600 4200
F 0 "#PWR019" H 1600 3950 50  0001 C CNN
F 1 "GND" H 1600 4050 50  0000 C CNN
F 2 "" H 1600 4200 60  0000 C CNN
F 3 "" H 1600 4200 60  0000 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
Text Label 1600 3250 3    60   ~ 0
AVCC
$Comp
L R R6
U 1 1 565A8788
P 2000 3900
F 0 "R6" V 2080 3900 50  0000 C CNN
F 1 "1k" V 2000 3900 50  0000 C CNN
F 2 "" V 1930 3900 30  0000 C CNN
F 3 "" H 2000 3900 30  0000 C CNN
	1    2000 3900
	0    1    1    0   
$EndComp
Text Label 2400 3900 2    60   ~ 0
/SS
Text Label 3100 7600 1    60   ~ 0
Brown
Text Label 5900 2650 0    60   ~ 0
KM6
$Comp
L GND #PWR020
U 1 1 565A944E
P 3000 7550
F 0 "#PWR020" H 3000 7300 50  0001 C CNN
F 1 "GND" H 3000 7400 50  0000 C CNN
F 2 "" H 3000 7550 60  0000 C CNN
F 3 "" H 3000 7550 60  0000 C CNN
	1    3000 7550
	1    0    0    -1  
$EndComp
Text Label 3150 1250 2    60   ~ 0
SCK
Text Label 3150 1150 2    60   ~ 0
MISO
Text Label 3150 1050 2    60   ~ 0
MOSI
Text Label 3150 950  2    60   ~ 0
/SS
$Comp
L TSOP38238 U3
U 1 1 565AA5C3
P 4400 1050
F 0 "U3" H 4350 1500 60  0000 C CNN
F 1 "TSOP38238" H 4450 550 60  0000 C CNN
F 2 "" H 4400 1050 60  0000 C CNN
F 3 "" H 4400 1050 60  0000 C CNN
	1    4400 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR021
U 1 1 565AA76E
P 4800 700
F 0 "#PWR021" H 4800 550 50  0001 C CNN
F 1 "VCC" H 4800 850 50  0000 C CNN
F 2 "" H 4800 700 60  0000 C CNN
F 3 "" H 4800 700 60  0000 C CNN
	1    4800 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 565AA990
P 4800 1400
F 0 "#PWR022" H 4800 1150 50  0001 C CNN
F 1 "GND" H 4800 1250 50  0000 C CNN
F 2 "" H 4800 1400 60  0000 C CNN
F 3 "" H 4800 1400 60  0000 C CNN
	1    4800 1400
	1    0    0    -1  
$EndComp
Text Label 4900 1050 2    60   ~ 0
IR
$Comp
L GND #PWR023
U 1 1 565B1531
P 1000 3250
F 0 "#PWR023" H 1000 3000 50  0001 C CNN
F 1 "GND" H 1000 3100 50  0000 C CNN
F 2 "" H 1000 3250 60  0000 C CNN
F 3 "" H 1000 3250 60  0000 C CNN
	1    1000 3250
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 565B1B2C
P 6250 1050
F 0 "R23" V 6330 1050 50  0000 C CNN
F 1 "10k" V 6250 1050 50  0000 C CNN
F 2 "" V 6180 1050 30  0000 C CNN
F 3 "" H 6250 1050 30  0000 C CNN
	1    6250 1050
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 565B2E9E
P 6400 1050
F 0 "R24" V 6480 1050 50  0000 C CNN
F 1 "10k" V 6400 1050 50  0000 C CNN
F 2 "" V 6330 1050 30  0000 C CNN
F 3 "" H 6400 1050 30  0000 C CNN
	1    6400 1050
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 565B2F52
P 6550 1050
F 0 "R30" V 6630 1050 50  0000 C CNN
F 1 "10k" V 6550 1050 50  0000 C CNN
F 2 "" V 6480 1050 30  0000 C CNN
F 3 "" H 6550 1050 30  0000 C CNN
	1    6550 1050
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 565B309A
P 6850 1050
F 0 "R29" V 6930 1050 50  0000 C CNN
F 1 "10k" V 6850 1050 50  0000 C CNN
F 2 "" V 6780 1050 30  0000 C CNN
F 3 "" H 6850 1050 30  0000 C CNN
	1    6850 1050
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 565B3150
P 6100 1050
F 0 "R22" V 6180 1050 50  0000 C CNN
F 1 "10k" V 6100 1050 50  0000 C CNN
F 2 "" V 6030 1050 30  0000 C CNN
F 3 "" H 6100 1050 30  0000 C CNN
	1    6100 1050
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 565B3207
P 6700 1050
F 0 "R28" V 6780 1050 50  0000 C CNN
F 1 "10k" V 6700 1050 50  0000 C CNN
F 2 "" V 6630 1050 30  0000 C CNN
F 3 "" H 6700 1050 30  0000 C CNN
	1    6700 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 565B41EA
P 6100 800
F 0 "#PWR?" H 6100 650 50  0001 C CNN
F 1 "VCC" H 6100 950 50  0000 C CNN
F 2 "" H 6100 800 60  0000 C CNN
F 3 "" H 6100 800 60  0000 C CNN
	1    6100 800 
	1    0    0    -1  
$EndComp
Text Label 3550 2000 2    60   ~ 0
BTN_PWR_LED1
$Comp
L SW_PUSH SW8
U 1 1 565BFE0B
P 5100 2300
F 0 "SW8" H 5250 2410 50  0000 C CNN
F 1 "POWER" H 5100 2220 50  0000 C CNN
F 2 "" H 5100 2300 60  0000 C CNN
F 3 "" H 5100 2300 60  0000 C CNN
	1    5100 2300
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 565BFEBA
P 5100 2000
F 0 "D?" H 5100 2100 50  0000 C CNN
F 1 "LED" H 5100 1900 50  0000 C CNN
F 2 "" H 5100 2000 60  0000 C CNN
F 3 "" H 5100 2000 60  0000 C CNN
	1    5100 2000
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 565BFFF7
P 5100 2550
F 0 "D?" H 5100 2650 50  0000 C CNN
F 1 "LED" H 5100 2450 50  0000 C CNN
F 2 "" H 5100 2550 60  0000 C CNN
F 3 "" H 5100 2550 60  0000 C CNN
	1    5100 2550
	1    0    0    -1  
$EndComp
Text Label 3150 850  2    60   ~ 0
KM4
Text Label 4600 2300 0    60   ~ 0
KM4
Text Label 5700 2300 2    60   ~ 0
KM2
$Comp
L R R27
U 1 1 565C562F
P 4700 2550
F 0 "R27" V 4780 2550 50  0000 C CNN
F 1 "390" V 4700 2550 50  0000 C CNN
F 2 "" V 4630 2550 30  0000 C CNN
F 3 "" H 4700 2550 30  0000 C CNN
	1    4700 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 565CE7A7
P 5400 2700
F 0 "#PWR?" H 5400 2450 50  0001 C CNN
F 1 "GND" H 5400 2550 50  0000 C CNN
F 2 "" H 5400 2700 60  0000 C CNN
F 3 "" H 5400 2700 60  0000 C CNN
	1    5400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1300 8700 1550
Wire Wire Line
	5900 1300 10450 1300
Wire Wire Line
	10450 1300 10450 2000
Wire Wire Line
	4000 7150 4000 7550
Wire Wire Line
	3900 7150 3900 7600
Wire Wire Line
	4350 5200 5050 5200
Connection ~ 4800 5200
Wire Wire Line
	5250 5200 5650 5200
Wire Wire Line
	5400 5200 5400 5100
Wire Wire Line
	1000 1050 800  1050
Wire Wire Line
	5400 4800 5400 4550
Connection ~ 5400 5200
Wire Wire Line
	5950 5200 6200 5200
Wire Wire Line
	3800 7150 3800 7600
Wire Wire Line
	3700 7150 3700 7600
Wire Wire Line
	2750 6350 3450 6350
Connection ~ 3200 6350
Wire Wire Line
	3650 6350 4050 6350
Wire Wire Line
	3800 6350 3800 6250
Wire Wire Line
	3800 5950 3800 5700
Connection ~ 3800 6350
Wire Wire Line
	2900 2750 3150 2750
Wire Wire Line
	3600 7150 3600 7600
Wire Wire Line
	2750 5200 3450 5200
Connection ~ 3200 5200
Wire Wire Line
	3650 5200 4050 5200
Wire Wire Line
	3800 5200 3800 5100
Wire Wire Line
	3800 4800 3800 4550
Connection ~ 3800 5200
Wire Wire Line
	2900 1900 3150 1900
Wire Wire Line
	3500 7150 3500 7600
Wire Wire Line
	2750 3900 3450 3900
Connection ~ 3200 3900
Wire Wire Line
	3650 3900 4150 3900
Wire Wire Line
	1000 2200 600  2200
Connection ~ 8700 1300
Wire Wire Line
	3800 4200 3800 4350
Connection ~ 3800 4250
Wire Wire Line
	4050 4200 4050 4250
Wire Wire Line
	4050 4250 3800 4250
Connection ~ 3800 3900
Connection ~ 4050 3900
Wire Wire Line
	4450 3900 4500 3900
Wire Wire Line
	4800 3700 4800 3250
Wire Wire Line
	4800 3250 4450 3250
Wire Wire Line
	3400 7150 3400 7600
Wire Wire Line
	550  7050 1250 7050
Connection ~ 1000 7050
Wire Wire Line
	1450 7050 1850 7050
Connection ~ 1600 7050
Wire Wire Line
	9300 2000 9600 2000
Wire Wire Line
	9450 1700 9450 2000
Wire Wire Line
	5900 1700 9450 1700
Connection ~ 9450 2000
Wire Wire Line
	8300 1800 8300 2400
Wire Wire Line
	8300 2400 8700 2400
Wire Wire Line
	5900 1800 8300 1800
Connection ~ 8300 2000
Wire Wire Line
	550  6200 1250 6200
Connection ~ 1000 6200
Wire Wire Line
	1450 6200 1850 6200
Wire Wire Line
	1600 6200 1600 6100
Wire Wire Line
	1600 5800 1600 5550
Connection ~ 1600 6200
Wire Wire Line
	2150 6200 2400 6200
Wire Wire Line
	3300 7150 3300 7600
Wire Wire Line
	11050 2000 11050 2250
Wire Wire Line
	11050 2250 10200 2250
Wire Wire Line
	10200 2550 10200 2000
Wire Wire Line
	10200 2400 9300 2400
Connection ~ 10200 2250
Wire Wire Line
	5900 2550 10200 2550
Connection ~ 10200 2400
Wire Wire Line
	3200 7150 3200 7600
Wire Wire Line
	550  5050 1250 5050
Connection ~ 1000 5050
Wire Wire Line
	1450 5050 1850 5050
Wire Wire Line
	1600 5050 1600 4950
Wire Wire Line
	1600 4650 1600 4400
Connection ~ 1600 5050
Wire Wire Line
	2150 5050 2400 5050
Wire Wire Line
	550  3900 1250 3900
Connection ~ 1000 3900
Wire Wire Line
	1450 3900 1850 3900
Wire Wire Line
	1600 3900 1600 3800
Wire Wire Line
	1600 3500 1600 3250
Connection ~ 1600 3900
Wire Wire Line
	2150 3900 2400 3900
Wire Wire Line
	3100 7150 3100 7600
Wire Wire Line
	9300 1550 9300 1800
Wire Wire Line
	9300 1800 8700 1800
Wire Wire Line
	8700 1800 8700 2200
Wire Wire Line
	8700 2200 7700 2200
Wire Wire Line
	7700 2650 7700 2000
Connection ~ 8700 2000
Wire Wire Line
	5900 2650 7700 2650
Connection ~ 7700 2200
Wire Wire Line
	3000 7150 3000 7550
Wire Wire Line
	2900 950  3150 950 
Wire Wire Line
	2900 1050 3150 1050
Wire Wire Line
	2900 1150 3150 1150
Wire Wire Line
	2900 1250 3150 1250
Wire Wire Line
	4800 1050 4900 1050
Wire Wire Line
	2900 2550 3150 2550
Wire Wire Line
	1000 2850 1000 3250
Connection ~ 1000 2950
Connection ~ 1000 3050
Wire Wire Line
	6100 900  6850 900 
Connection ~ 6250 900 
Connection ~ 6400 900 
Connection ~ 6550 900 
Connection ~ 6700 900 
Wire Wire Line
	6100 1200 6100 1300
Connection ~ 6100 1300
Wire Wire Line
	6250 1200 6250 1700
Connection ~ 6250 1700
Wire Wire Line
	6400 1200 6400 1800
Connection ~ 6400 1800
Wire Wire Line
	6550 1200 6550 1900
Connection ~ 6550 1900
Wire Wire Line
	6700 1200 6700 2550
Connection ~ 6700 2550
Wire Wire Line
	6850 1200 6850 2650
Connection ~ 6850 2650
Wire Wire Line
	4800 3700 5350 3700
Wire Wire Line
	5350 3700 5350 3750
Wire Wire Line
	5350 4050 5350 4100
Wire Wire Line
	5350 4100 4800 4100
Wire Wire Line
	4800 4100 4800 4150
Wire Wire Line
	2900 2000 3550 2000
Wire Wire Line
	6100 800  6100 900 
Wire Wire Line
	2900 850  3150 850 
Wire Wire Line
	4600 2300 4800 2300
Wire Wire Line
	5400 2300 5700 2300
Wire Wire Line
	2900 2850 3150 2850
Wire Wire Line
	2900 2950 3150 2950
Wire Wire Line
	2900 3050 3150 3050
Wire Wire Line
	5300 2550 5400 2550
Wire Wire Line
	5400 2000 5400 2700
Wire Wire Line
	5400 2000 5300 2000
Connection ~ 5400 2550
$Comp
L R R26
U 1 1 565CED6F
P 4700 2000
F 0 "R26" V 4780 2000 50  0000 C CNN
F 1 "390" V 4700 2000 50  0000 C CNN
F 2 "" V 4630 2000 30  0000 C CNN
F 3 "" H 4700 2000 30  0000 C CNN
	1    4700 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2000 4900 2000
Wire Wire Line
	4850 2550 4900 2550
Wire Wire Line
	3900 2000 4550 2000
Wire Wire Line
	3900 2550 4550 2550
Text Label 3900 2000 0    60   ~ 0
BTN_PWR_LED1
Text Label 3900 2550 0    60   ~ 0
BTN_PWR_LED2
Wire Notes Line
	4850 1850 4850 2700
Wire Notes Line
	4850 2700 5350 2700
Wire Notes Line
	5350 2700 5350 1850
Wire Notes Line
	5350 1850 4850 1850
Wire Wire Line
	7650 2000 7650 1300
Connection ~ 7650 1300
Wire Wire Line
	7650 2000 7550 2000
Wire Wire Line
	6950 1900 6950 2000
Wire Wire Line
	5900 1900 6950 1900
Wire Wire Line
	9650 3500 10300 3500
Wire Wire Line
	9650 3600 10300 3600
Wire Wire Line
	9650 3700 10300 3700
Wire Wire Line
	9650 3800 10300 3800
Text Label 9650 3500 0    60   ~ 0
PT6302_CSB
Text Label 9650 3600 0    60   ~ 0
PT6302_CLKB
Text Label 9650 3700 0    60   ~ 0
PT6302_DIN
$Comp
L GND #PWR?
U 1 1 565DC181
P 9650 3800
F 0 "#PWR?" H 9650 3550 50  0001 C CNN
F 1 "GND" H 9650 3650 50  0000 C CNN
F 2 "" H 9650 3800 60  0000 C CNN
F 3 "" H 9650 3800 60  0000 C CNN
	1    9650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 750  3650 750 
Text Label 3650 750  2    60   ~ 0
PT6302_CSB
Wire Wire Line
	2900 1350 3650 1350
Text Label 3650 1350 2    60   ~ 0
PT6302_CLKB
Wire Wire Line
	2900 1450 3650 1450
Text Label 3650 1450 2    60   ~ 0
PT6302_DIN
Wire Wire Line
	2900 1800 3650 1800
Text Label 3650 1800 2    60   ~ 0
PT6302_RSTB
$Comp
L CONN_01X05 P?
U 1 1 565DEC64
P 10500 3600
F 0 "P?" H 10500 3900 50  0000 C CNN
F 1 "CONN_01X05" V 10600 3600 50  0000 C CNN
F 2 "" H 10500 3600 60  0000 C CNN
F 3 "" H 10500 3600 60  0000 C CNN
	1    10500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3400 9650 3400
Text Label 9650 3400 0    60   ~ 0
PT6302_RSTB
Wire Wire Line
	1000 650  1000 850 
Connection ~ 1000 750 
$Comp
L VCC #PWR?
U 1 1 565DF419
P 1000 650
F 0 "#PWR?" H 1000 500 50  0001 C CNN
F 1 "VCC" H 1000 800 50  0000 C CNN
F 2 "" H 1000 650 60  0000 C CNN
F 3 "" H 1000 650 60  0000 C CNN
	1    1000 650 
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 565DF593
P 750 1700
F 0 "C17" H 775 1800 50  0000 L CNN
F 1 "C" H 775 1600 50  0000 L CNN
F 2 "" H 788 1550 30  0000 C CNN
F 3 "" H 750 1700 60  0000 C CNN
	1    750  1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 565DF789
P 750 1850
F 0 "#PWR?" H 750 1600 50  0001 C CNN
F 1 "GND" H 750 1700 50  0000 C CNN
F 2 "" H 750 1850 60  0000 C CNN
F 3 "" H 750 1850 60  0000 C CNN
	1    750  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1350 750  1350
Wire Wire Line
	750  1350 750  1550
Wire Wire Line
	1000 1350 1000 2100
Text Label 3150 2850 2    60   ~ 0
KM1
Text Label 3150 2950 2    60   ~ 0
KM2
Text Label 3150 3050 2    60   ~ 0
KM3
$Comp
L C C19
U 1 1 565E1C71
P 600 700
F 0 "C19" H 625 800 50  0000 L CNN
F 1 "C" H 625 600 50  0000 L CNN
F 2 "" H 638 550 30  0000 C CNN
F 3 "" H 600 700 60  0000 C CNN
	1    600  700 
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 565E1D77
P 800 700
F 0 "C20" H 825 800 50  0000 L CNN
F 1 "C" H 825 600 50  0000 L CNN
F 2 "" H 838 550 30  0000 C CNN
F 3 "" H 800 700 60  0000 C CNN
	1    800  700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 700  900  700 
Wire Wire Line
	900  700  900  550 
Wire Wire Line
	900  550  600  550 
Connection ~ 1000 700 
Connection ~ 800  550 
Wire Wire Line
	600  850  800  850 
Wire Wire Line
	700  850  700  900 
Connection ~ 700  850 
$Comp
L GND #PWR?
U 1 1 565E23C7
P 700 900
F 0 "#PWR?" H 700 650 50  0001 C CNN
F 1 "GND" H 700 750 50  0000 C CNN
F 2 "" H 700 900 60  0000 C CNN
F 3 "" H 700 900 60  0000 C CNN
	1    700  900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1600 3150 1600
Wire Wire Line
	2900 1700 3150 1700
Text Label 3150 1600 2    60   ~ 0
KM5
Text Label 3150 1700 2    60   ~ 0
KM6
Wire Wire Line
	2900 2100 3550 2100
Text Label 3550 2100 2    60   ~ 0
BTN_PWR_LED2
$Comp
L R R16
U 1 1 565E3F3F
P 7700 3400
F 0 "R16" V 7780 3400 50  0000 C CNN
F 1 "10k" V 7700 3400 50  0000 C CNN
F 2 "" V 7630 3400 30  0000 C CNN
F 3 "" H 7700 3400 30  0000 C CNN
	1    7700 3400
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 565E43EA
P 7700 3150
F 0 "#PWR?" H 7700 3000 50  0001 C CNN
F 1 "VCC" H 7700 3300 50  0000 C CNN
F 2 "" H 7700 3150 60  0000 C CNN
F 3 "" H 7700 3150 60  0000 C CNN
	1    7700 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X06 J3
U 1 1 565E4637
P 7450 4000
F 0 "J3" H 7450 4350 50  0000 C CNN
F 1 "CONN_02X06" H 7450 3650 50  0000 C CNN
F 2 "" H 7450 2800 60  0000 C CNN
F 3 "" H 7450 2800 60  0000 C CNN
	1    7450 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 3550 7700 3750
Wire Wire Line
	7700 3650 8050 3650
Text Label 8050 3650 2    60   ~ 0
RXD
Connection ~ 7700 3650
Wire Wire Line
	7700 3250 7700 3150
Wire Wire Line
	2900 2350 3150 2350
Text Label 3150 2350 2    60   ~ 0
RXD
Wire Wire Line
	2900 2200 3150 2200
Text Label 3150 2200 2    60   ~ 0
RESET
Wire Wire Line
	2900 2450 3150 2450
Text Label 3150 2450 2    60   ~ 0
TXD
$Comp
L R R12
U 1 1 565EBA87
P 7950 4100
F 0 "R12" V 8030 4100 50  0000 C CNN
F 1 "10k" V 7950 4100 50  0000 C CNN
F 2 "" V 7880 4100 30  0000 C CNN
F 3 "" H 7950 4100 30  0000 C CNN
	1    7950 4100
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 565EBB8B
P 7950 3900
F 0 "#PWR?" H 7950 3750 50  0001 C CNN
F 1 "VCC" H 7950 4050 50  0000 C CNN
F 2 "" H 7950 3900 60  0000 C CNN
F 3 "" H 7950 3900 60  0000 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4250 7700 4300
Wire Wire Line
	7700 4300 8200 4300
Wire Wire Line
	7950 4300 7950 4250
Wire Wire Line
	7950 3950 7950 3900
Text Label 3150 2550 2    60   ~ 0
IR
NoConn ~ 2900 2650
Connection ~ 7950 4300
Text Label 8200 4300 2    60   ~ 0
TXD
Wire Wire Line
	7400 3750 7400 3500
Wire Wire Line
	7500 3750 7500 3650
Wire Wire Line
	7500 3650 7400 3650
Connection ~ 7400 3650
$Comp
L GND #PWR?
U 1 1 565FE480
P 7400 3400
F 0 "#PWR?" H 7400 3150 50  0001 C CNN
F 1 "GND" H 7400 3250 50  0000 C CNN
F 2 "" H 7400 3400 60  0000 C CNN
F 3 "" H 7400 3400 60  0000 C CNN
	1    7400 3400
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 565FE593
P 7200 3750
F 0 "#PWR?" H 7200 3600 50  0001 C CNN
F 1 "VCC" H 7200 3900 50  0000 C CNN
F 2 "" H 7200 3750 60  0000 C CNN
F 3 "" H 7200 3750 60  0000 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
NoConn ~ 7600 3750
NoConn ~ 7600 4250
Wire Wire Line
	7500 4250 7500 4600
Text Label 7500 4600 1    60   ~ 0
/SS
Wire Wire Line
	7300 3750 7300 3400
Text Label 7300 3400 3    60   ~ 0
MOSI
Wire Wire Line
	7200 4250 7200 4600
Text Label 7200 4600 1    60   ~ 0
MISO
Wire Wire Line
	7300 4250 7300 4600
Text Label 7300 4600 1    60   ~ 0
SCK
Wire Wire Line
	7400 4250 7400 4600
Text Label 7400 4600 1    60   ~ 0
RESET
$EndSCHEMATC

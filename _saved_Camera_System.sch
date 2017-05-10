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
L BARREL_JACK J1
U 1 1 5912CACA
P 1150 1000
F 0 "J1" H 1150 1195 50  0000 C CNN
F 1 "BARREL_JACK" H 1150 845 50  0000 C CNN
F 2 "" H 1150 1000 50  0001 C CNN
F 3 "" H 1150 1000 50  0001 C CNN
	1    1150 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1000 1750 1000
Wire Wire Line
	1650 1000 1650 1100
Wire Wire Line
	1650 1100 1450 1100
$Comp
L GND #PWR1
U 1 1 5912CC4A
P 1750 1500
F 0 "#PWR1" H 1750 1250 50  0001 C CNN
F 1 "GND" H 1750 1350 50  0000 C CNN
F 2 "" H 1750 1500 50  0001 C CNN
F 3 "" H 1750 1500 50  0001 C CNN
	1    1750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1000 1750 1500
Connection ~ 1650 1000
Wire Wire Line
	1450 900  2000 900 
$Comp
L CP C1
U 1 1 5912CF48
P 2500 1250
F 0 "C1" H 2525 1350 50  0000 L CNN
F 1 "47u" H 2525 1150 50  0000 L CNN
F 2 "" H 2538 1100 50  0001 C CNN
F 3 "" H 2500 1250 50  0001 C CNN
	1    2500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 900  2500 900 
Wire Wire Line
	2500 900  2500 1100
$Comp
L GND #PWR2
U 1 1 5912CFCD
P 2500 1500
F 0 "#PWR2" H 2500 1250 50  0001 C CNN
F 1 "GND" H 2500 1350 50  0000 C CNN
F 2 "" H 2500 1500 50  0001 C CNN
F 3 "" H 2500 1500 50  0001 C CNN
	1    2500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1400 2500 1500
$Comp
L D D1
U 1 1 5912D262
P 2150 900
F 0 "D1" H 2150 1000 50  0000 C CNN
F 1 "CS3D" H 2150 800 50  0000 C CNN
F 2 "" H 2150 900 50  0001 C CNN
F 3 "" H 2150 900 50  0001 C CNN
	1    2150 900 
	-1   0    0    1   
$EndComp
$EndSCHEMATC

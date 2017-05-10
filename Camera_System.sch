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
LIBS:Camera_System-cache
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
P 1050 1400
F 0 "J1" H 1050 1595 50  0000 C CNN
F 1 "BARREL_JACK" H 1050 1245 50  0000 C CNN
F 2 "" H 1050 1400 50  0001 C CNN
F 3 "" H 1050 1400 50  0001 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1400 1650 1400
Wire Wire Line
	1550 1400 1550 1500
Wire Wire Line
	1550 1500 1350 1500
$Comp
L GND #PWR01
U 1 1 5912CC4A
P 1650 1900
F 0 "#PWR01" H 1650 1650 50  0001 C CNN
F 1 "GND" H 1650 1750 50  0000 C CNN
F 2 "" H 1650 1900 50  0001 C CNN
F 3 "" H 1650 1900 50  0001 C CNN
	1    1650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1400 1650 1900
Connection ~ 1550 1400
Wire Wire Line
	1350 1300 1900 1300
$Comp
L CP C1
U 1 1 5912CF48
P 2400 1650
F 0 "C1" H 2425 1750 50  0000 L CNN
F 1 "47u" H 2425 1550 50  0000 L CNN
F 2 "" H 2438 1500 50  0001 C CNN
F 3 "" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1300 2400 1500
$Comp
L GND #PWR02
U 1 1 5912CFCD
P 2400 1900
F 0 "#PWR02" H 2400 1650 50  0001 C CNN
F 1 "GND" H 2400 1750 50  0000 C CNN
F 2 "" H 2400 1900 50  0001 C CNN
F 3 "" H 2400 1900 50  0001 C CNN
	1    2400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1800 2400 1900
$Comp
L D D1
U 1 1 5912D262
P 2050 1300
F 0 "D1" H 2050 1400 50  0000 C CNN
F 1 "CS3D" H 2050 1200 50  0000 C CNN
F 2 "" H 2050 1300 50  0001 C CNN
F 3 "" H 2050 1300 50  0001 C CNN
	1    2050 1300
	-1   0    0    1   
$EndComp
Connection ~ 2400 1300
Wire Wire Line
	2200 1300 3900 1300
Wire Wire Line
	5550 1500 5550 1300
Wire Wire Line
	5550 1800 5550 1900
$Comp
L GND #PWR03
U 1 1 59130632
P 5550 1900
F 0 "#PWR03" H 5550 1650 50  0001 C CNN
F 1 "GND" H 5550 1750 50  0000 C CNN
F 2 "" H 5550 1900 50  0001 C CNN
F 3 "" H 5550 1900 50  0001 C CNN
	1    5550 1900
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59130966
P 3600 1650
F 0 "C4" H 3625 1750 50  0000 L CNN
F 1 "100n" H 3625 1550 50  0000 L CNN
F 2 "" H 3638 1500 50  0001 C CNN
F 3 "" H 3600 1650 50  0001 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59130A03
P 3600 1900
F 0 "#PWR04" H 3600 1650 50  0001 C CNN
F 1 "GND" H 3600 1750 50  0000 C CNN
F 2 "" H 3600 1900 50  0001 C CNN
F 3 "" H 3600 1900 50  0001 C CNN
	1    3600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1800 3600 1900
Wire Wire Line
	4450 1850 4450 1900
$Comp
L GND #PWR05
U 1 1 5913101C
P 4450 1900
F 0 "#PWR05" H 4450 1650 50  0001 C CNN
F 1 "GND" H 4450 1750 50  0000 C CNN
F 2 "" H 4450 1900 50  0001 C CNN
F 3 "" H 4450 1900 50  0001 C CNN
	1    4450 1900
	1    0    0    -1  
$EndComp
Text Notes 3250 1200 0    60   ~ 0
6 < VIN < 15
$Comp
L IFX1117ME_V33 U1
U 1 1 59131708
P 4450 1150
F 0 "U1" H 4450 1250 60  0000 C CNN
F 1 "IFX1117ME_V33" H 4450 1400 60  0000 C CNN
F 2 "" H 4450 1150 60  0001 C CNN
F 3 "" H 4450 1150 60  0001 C CNN
	1    4450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 5900 1300
Wire Wire Line
	5000 1450 5200 1450
Wire Wire Line
	5200 1450 5200 1300
Connection ~ 5200 1300
Text Notes 5600 1900 0    60   ~ 0
ESR <= 20 Ohm
Text Notes 4100 800  0    60   ~ 0
Order the one with fixed output voltage = 3.3V
Text Notes 5000 1200 0    60   ~ 0
I_out_min = 1.1A
$Comp
L CP C2
U 1 1 59131DB6
P 3250 1650
F 0 "C2" H 3275 1750 50  0000 L CNN
F 1 "10u" H 3275 1550 50  0000 L CNN
F 2 "" H 3288 1500 50  0001 C CNN
F 3 "" H 3250 1650 50  0001 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1500 3600 1300
Connection ~ 3600 1300
$Comp
L GND #PWR06
U 1 1 59131EFF
P 3250 1900
F 0 "#PWR06" H 3250 1650 50  0001 C CNN
F 1 "GND" H 3250 1750 50  0000 C CNN
F 2 "" H 3250 1900 50  0001 C CNN
F 3 "" H 3250 1900 50  0001 C CNN
	1    3250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1800 3250 1900
Wire Wire Line
	3250 1500 3250 1300
Connection ~ 3250 1300
Wire Wire Line
	2850 1300 2850 2850
Wire Wire Line
	2850 2850 4000 2850
Connection ~ 2850 1300
Wire Wire Line
	4000 3000 3850 3000
Wire Wire Line
	3850 3000 3850 2850
Connection ~ 3850 2850
$Comp
L GND #PWR07
U 1 1 5913275D
P 4450 3600
F 0 "#PWR07" H 4450 3350 50  0001 C CNN
F 1 "GND" H 4450 3450 50  0000 C CNN
F 2 "" H 4450 3600 50  0001 C CNN
F 3 "" H 4450 3600 50  0001 C CNN
	1    4450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3600 4450 3450
Wire Wire Line
	4950 2850 5900 2850
$Comp
L C C6
U 1 1 591328BE
P 5550 3200
F 0 "C6" H 5575 3300 50  0000 L CNN
F 1 "2.2u" H 5575 3100 50  0000 L CNN
F 2 "" H 5588 3050 50  0001 C CNN
F 3 "" H 5550 3200 50  0001 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3050 5550 2850
Connection ~ 5550 2850
$Comp
L GND #PWR08
U 1 1 591329A8
P 5550 3600
F 0 "#PWR08" H 5550 3350 50  0001 C CNN
F 1 "GND" H 5550 3450 50  0000 C CNN
F 2 "" H 5550 3600 50  0001 C CNN
F 3 "" H 5550 3600 50  0001 C CNN
	1    5550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3350 5550 3600
$Comp
L C C3
U 1 1 59132A11
P 3250 3200
F 0 "C3" H 3275 3300 50  0000 L CNN
F 1 "1u" H 3275 3100 50  0000 L CNN
F 2 "" H 3288 3050 50  0001 C CNN
F 3 "" H 3250 3200 50  0001 C CNN
	1    3250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3050 3250 2850
Connection ~ 3250 2850
$Comp
L GND #PWR09
U 1 1 59132CC0
P 3250 3600
F 0 "#PWR09" H 3250 3350 50  0001 C CNN
F 1 "GND" H 3250 3450 50  0000 C CNN
F 2 "" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3350 3250 3600
$Comp
L +3.3V #PWR010
U 1 1 59132DA2
P 5900 1200
F 0 "#PWR010" H 5900 1050 50  0001 C CNN
F 1 "+3.3V" H 5900 1340 50  0000 C CNN
F 2 "" H 5900 1200 50  0001 C CNN
F 3 "" H 5900 1200 50  0001 C CNN
	1    5900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1300 5900 1200
$Comp
L +5V #PWR011
U 1 1 59132E5F
P 5900 2750
F 0 "#PWR011" H 5900 2600 50  0001 C CNN
F 1 "+5V" H 5900 2890 50  0000 C CNN
F 2 "" H 5900 2750 50  0001 C CNN
F 3 "" H 5900 2750 50  0001 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2850 5900 2750
$Comp
L LD2980ABM50TR U2
U 1 1 59132F80
P 4450 2750
F 0 "U2" H 4450 2900 60  0000 C CNN
F 1 "LD2980ABM50TR" H 4450 3050 60  0000 C CNN
F 2 "" H 4450 2750 60  0001 C CNN
F 3 "" H 4450 2750 60  0001 C CNN
	1    4450 2750
	1    0    0    -1  
$EndComp
Text Notes 4100 2350 0    60   ~ 0
Order the one with fixed output voltage = 5V
$Comp
L C C5
U 1 1 591333B2
P 5550 1650
F 0 "C5" H 5575 1750 50  0000 L CNN
F 1 "22u" H 5575 1550 50  0000 L CNN
F 2 "" H 5588 1500 50  0001 C CNN
F 3 "" H 5550 1650 50  0001 C CNN
	1    5550 1650
	1    0    0    -1  
$EndComp
Text Label 2600 1300 0    60   ~ 0
VDC_IN
$EndSCHEMATC

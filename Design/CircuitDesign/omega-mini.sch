EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L Seeeduino_XIAO:SeeeduinoXIAO U2
U 1 1 606BB908
P 6300 2250
F 0 "U2" H 6275 1311 50  0000 C CNN
F 1 "Seeeduino_XIAO" H 6275 1220 50  0000 C CNN
F 2 "Seeeduino XIAO KICAD:Seeeduino_XIAO-MOUDLE14P-2.54-21X17_THT.8MM" H 5950 2450 50  0001 C CNN
F 3 "" H 5950 2450 50  0001 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 606DCE51
P 1600 2450
F 0 "BT1" H 1708 2496 50  0000 L CNN
F 1 "LiFe Battery 6.6v" H 1708 2405 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" V 1600 2510 50  0001 C CNN
F 3 "~" V 1600 2510 50  0001 C CNN
	1    1600 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 606F2EE1
P 2000 4300
F 0 "C1" H 2118 4346 50  0000 L CNN
F 1 "100u" H 2118 4255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 2038 4150 50  0001 C CNN
F 3 "~" H 2000 4300 50  0001 C CNN
	1    2000 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 606FA236
P 2450 4300
F 0 "C2" H 2565 4346 50  0000 L CNN
F 1 "0.33u" H 2565 4255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2488 4150 50  0001 C CNN
F 3 "~" H 2450 4300 50  0001 C CNN
	1    2450 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 606FAD00
P 3450 4300
F 0 "C3" H 3565 4346 50  0000 L CNN
F 1 "0.1u" H 3565 4255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3488 4150 50  0001 C CNN
F 3 "~" H 3450 4300 50  0001 C CNN
	1    3450 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6070C99C
P 7650 1650
F 0 "C4" H 7765 1696 50  0000 L CNN
F 1 "0.1u" H 7765 1605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7688 1500 50  0001 C CNN
F 3 "~" H 7650 1650 50  0001 C CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:IFX27001TFV50 U1
U 1 1 606DBA99
P 2950 4050
F 0 "U1" H 2950 4317 50  0000 C CNN
F 1 "NJM7805" H 2950 4226 50  0000 C CNN
F 2 "MyLibrary:TO-252-3_THT" H 2950 4000 50  0001 C CNN
F 3 "https://static6.arrow.com/aropdfconversion/dc75757ae45a88e5f69bdce3f2a651a5fe0ca07d/ifx27001_ds_10.pdf" H 2950 4000 50  0001 C CNN
	1    2950 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 6074072E
P 1950 2100
F 0 "SW1" H 1950 2385 50  0000 C CNN
F 1 "SW_DPDT_x2" H 1950 2294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011AQN_DPDT_Angled" H 1950 2100 50  0001 C CNN
F 3 "~" H 1950 2100 50  0001 C CNN
	1    1950 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60749F66
P 2500 2000
F 0 "R1" V 2293 2000 50  0000 C CNN
F 1 "10" V 2384 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2430 2000 50  0001 C CNN
F 3 "~" H 2500 2000 50  0001 C CNN
	1    2500 2000
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 60753469
P 2600 1500
F 0 "D1" H 2600 1717 50  0000 C CNN
F 1 "D" H 2600 1626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 2600 1500 50  0001 C CNN
F 3 "~" H 2600 1500 50  0001 C CNN
	1    2600 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60BAAE3F
P 1600 3000
F 0 "#PWR01" H 1600 2750 50  0001 C CNN
F 1 "GND" H 1605 2827 50  0000 C CNN
F 2 "" H 1600 3000 50  0001 C CNN
F 3 "" H 1600 3000 50  0001 C CNN
	1    1600 3000
	1    0    0    -1  
$EndComp
Text GLabel 3650 3650 2    50   Output ~ 0
+5V
Text GLabel 1750 1300 2    50   Output ~ 0
+6V6
Text GLabel 5300 2400 0    50   BiDi ~ 0
SDA
Text GLabel 5300 2550 0    50   BiDi ~ 0
SCL
Text Label 5200 1800 0    50   ~ 0
SIG1
Entry Wire Line
	5050 1700 5150 1800
Text Label 5200 1950 0    50   ~ 0
SIG2
Entry Wire Line
	5050 1850 5150 1950
Text Label 5200 2100 0    50   ~ 0
SIG3
Entry Wire Line
	5050 2000 5150 2100
Text Label 5200 2250 0    50   ~ 0
SIG4
Entry Wire Line
	5050 2150 5150 2250
Text Label 5200 2700 0    50   ~ 0
SIG5
Entry Wire Line
	5050 2600 5150 2700
Text Label 7150 2250 0    50   ~ 0
SIG9
Entry Wire Line
	7400 2250 7500 2350
Text Label 7150 2400 0    50   ~ 0
SIG8
Entry Wire Line
	7400 2400 7500 2500
Text Label 7150 2550 0    50   ~ 0
SIG7
Entry Wire Line
	7400 2550 7500 2650
Text Label 7150 2700 0    50   ~ 0
SIG6
Entry Wire Line
	7400 2700 7500 2800
NoConn ~ 6400 3100
NoConn ~ 6200 3100
NoConn ~ 6100 1350
NoConn ~ 6250 1350
NoConn ~ 6400 1350
NoConn ~ 6550 1350
NoConn ~ 7100 2100
Entry Wire Line
	4950 1300 5050 1400
Text GLabel 4850 1300 0    50   Output ~ 0
SIG[1..5]
Entry Wire Line
	7400 3150 7500 3050
Text GLabel 7300 3150 0    50   Output ~ 0
SIG[6..9]
Text GLabel 7000 1300 0    50   Input ~ 0
+5V
Wire Wire Line
	2000 4050 2000 4150
Wire Wire Line
	2000 4050 2450 4050
Wire Wire Line
	2450 4150 2450 4050
Connection ~ 2450 4050
Wire Wire Line
	2450 4050 2650 4050
Wire Wire Line
	3250 4050 3450 4050
Wire Wire Line
	3450 4050 3450 4150
Wire Wire Line
	1750 1300 1600 1300
Wire Wire Line
	1600 2650 1600 3000
Wire Wire Line
	5450 1800 5150 1800
Wire Wire Line
	5450 1950 5150 1950
Wire Wire Line
	5450 2100 5150 2100
Wire Wire Line
	5450 2250 5150 2250
Wire Wire Line
	5450 2700 5150 2700
Wire Wire Line
	7100 2250 7400 2250
Wire Wire Line
	7100 2400 7400 2400
Wire Wire Line
	7100 2550 7400 2550
Wire Wire Line
	7100 2700 7400 2700
Wire Wire Line
	5450 2400 5300 2400
Wire Wire Line
	5450 2550 5300 2550
Wire Wire Line
	4850 1300 4950 1300
Wire Wire Line
	7300 3150 7400 3150
Wire Wire Line
	7000 1300 7250 1300
Wire Wire Line
	7250 1300 7250 1800
Wire Wire Line
	7250 1800 7100 1800
Wire Wire Line
	7100 1950 7650 1950
Wire Wire Line
	7650 1800 7650 1950
Connection ~ 7650 1950
Wire Wire Line
	7650 1500 7650 1300
Wire Wire Line
	7650 1300 7250 1300
Connection ~ 7250 1300
$Comp
L Device:R R2
U 1 1 6104309A
P 2850 2300
F 0 "R2" H 2920 2346 50  0000 L CNN
F 1 "10K" H 2920 2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2780 2300 50  0001 C CNN
F 3 "~" H 2850 2300 50  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2000 2850 2150
Connection ~ 2850 2000
$Comp
L Device:R R3
U 1 1 610AEA10
P 3250 2300
F 0 "R3" H 3320 2346 50  0000 L CNN
F 1 "120" H 3320 2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3180 2300 50  0001 C CNN
F 3 "~" H 3250 2300 50  0001 C CNN
	1    3250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2000 2850 2000
Wire Wire Line
	2850 2000 3250 2000
Wire Wire Line
	3250 2150 3250 2000
Connection ~ 3250 2000
Wire Wire Line
	3250 2000 3400 2000
Wire Wire Line
	3250 2450 3250 2500
Wire Wire Line
	3500 1300 3700 1300
Wire Wire Line
	3700 1300 3700 1500
Text GLabel 3500 1300 0    50   Input ~ 0
MOSFET(D)
Wire Wire Line
	2150 2000 2350 2000
Wire Wire Line
	1600 1300 1600 1500
Connection ~ 1600 2100
Wire Wire Line
	1600 2100 1600 2250
Wire Wire Line
	1600 2100 1750 2100
NoConn ~ 2150 2200
$Comp
L power:GND #PWR02
U 1 1 6125A6A4
P 3700 3000
F 0 "#PWR02" H 3700 2750 50  0001 C CNN
F 1 "GND" H 3705 2827 50  0000 C CNN
F 2 "" H 3700 3000 50  0001 C CNN
F 3 "" H 3700 3000 50  0001 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2200 3700 2900
Wire Wire Line
	3250 2800 3250 2900
Wire Wire Line
	3250 2900 3700 2900
Connection ~ 3700 2900
Wire Wire Line
	3700 2900 3700 3000
Wire Wire Line
	2850 2900 3250 2900
Wire Wire Line
	2850 2450 2850 2900
Connection ~ 3250 2900
Text GLabel 1800 3650 0    50   Input ~ 0
+6V6
Text GLabel 1800 4600 0    50   Output ~ 0
MOSFET(D)
Wire Wire Line
	1800 3650 2000 3650
Wire Wire Line
	2000 3650 2000 4050
Connection ~ 2000 4050
Wire Wire Line
	3650 3650 3450 3650
Wire Wire Line
	3450 3650 3450 4050
Connection ~ 3450 4050
Wire Wire Line
	2000 4600 1800 4600
Wire Wire Line
	2000 4450 2000 4600
Wire Wire Line
	2450 4450 2450 4600
Wire Wire Line
	2450 4600 2000 4600
Connection ~ 2000 4600
Wire Wire Line
	2950 4350 2950 4600
Wire Wire Line
	2950 4600 2450 4600
Connection ~ 2450 4600
Wire Wire Line
	3450 4450 3450 4600
Wire Wire Line
	3450 4600 2950 4600
Connection ~ 2950 4600
Wire Wire Line
	2750 1500 3700 1500
Connection ~ 3700 1500
Wire Wire Line
	2450 1500 1600 1500
Connection ~ 1600 1500
Wire Wire Line
	1600 1500 1600 2100
Text GLabel 7300 3300 0    50   Output ~ 0
MOSFET(D)
Wire Wire Line
	7650 3300 7300 3300
Wire Wire Line
	7650 1950 7650 3300
Wire Wire Line
	7650 4300 7650 5650
Connection ~ 7250 3650
Wire Wire Line
	7650 3650 7250 3650
Wire Wire Line
	7650 3850 7650 3650
Connection ~ 7650 4300
Wire Wire Line
	7650 4150 7650 4300
Wire Wire Line
	7100 4300 7650 4300
Wire Wire Line
	7250 4150 7100 4150
Wire Wire Line
	7250 3650 7250 4150
Wire Wire Line
	7000 3650 7250 3650
Wire Wire Line
	7300 5500 7400 5500
Wire Wire Line
	4850 3650 4950 3650
Wire Wire Line
	5450 4900 5300 4900
Wire Wire Line
	5450 4750 5300 4750
Wire Wire Line
	7100 5050 7400 5050
Wire Wire Line
	7100 4900 7400 4900
Wire Wire Line
	7100 4750 7400 4750
Wire Wire Line
	7100 4600 7400 4600
Wire Wire Line
	5450 5050 5150 5050
Wire Wire Line
	5450 4600 5150 4600
Wire Wire Line
	5450 4450 5150 4450
Wire Wire Line
	5450 4300 5150 4300
Wire Wire Line
	5450 4150 5150 4150
Text GLabel 7000 3650 0    50   Input ~ 0
+5V
Text GLabel 7300 5500 0    50   Output ~ 0
SIG[15..18]
Entry Wire Line
	7400 5500 7500 5400
Text GLabel 4850 3650 0    50   Output ~ 0
SIG[10..14]
Entry Wire Line
	4950 3650 5050 3750
NoConn ~ 7100 4450
NoConn ~ 6550 3700
NoConn ~ 6400 3700
NoConn ~ 6250 3700
NoConn ~ 6100 3700
NoConn ~ 6200 5450
NoConn ~ 6400 5450
Entry Wire Line
	7400 5050 7500 5150
Text Label 7150 5050 0    50   ~ 0
SIG15
Entry Wire Line
	7400 4900 7500 5000
Text Label 7150 4900 0    50   ~ 0
SIG16
Entry Wire Line
	7400 4750 7500 4850
Text Label 7150 4750 0    50   ~ 0
SIG17
Entry Wire Line
	7400 4600 7500 4700
Text Label 7150 4600 0    50   ~ 0
SIG18
Entry Wire Line
	5050 4950 5150 5050
Text Label 5200 5050 0    50   ~ 0
SIG14
Entry Wire Line
	5050 4500 5150 4600
Text Label 5200 4600 0    50   ~ 0
SIG13
Entry Wire Line
	5050 4350 5150 4450
Text Label 5200 4450 0    50   ~ 0
SIG12
Entry Wire Line
	5050 4200 5150 4300
Text Label 5200 4300 0    50   ~ 0
SIG11
Entry Wire Line
	5050 4050 5150 4150
Text Label 5200 4150 0    50   ~ 0
SIG10
Text GLabel 5300 4900 0    50   BiDi ~ 0
SCL
Text GLabel 5300 4750 0    50   BiDi ~ 0
SDA
$Comp
L Device:C C5
U 1 1 608C1C64
P 7650 4000
F 0 "C5" H 7765 4046 50  0000 L CNN
F 1 "0.1u" H 7765 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7688 3850 50  0001 C CNN
F 3 "~" H 7650 4000 50  0001 C CNN
	1    7650 4000
	1    0    0    -1  
$EndComp
$Comp
L Seeeduino_XIAO:SeeeduinoXIAO U3
U 1 1 608C1C5E
P 6300 4600
F 0 "U3" H 6275 3661 50  0000 C CNN
F 1 "Seeeduino_XIAO" H 6275 3570 50  0000 C CNN
F 2 "Seeeduino XIAO KICAD:Seeeduino_XIAO-MOUDLE14P-2.54-21X17_THT.8MM" H 5950 4800 50  0001 C CNN
F 3 "" H 5950 4800 50  0001 C CNN
	1    6300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 60759FAA
P 3250 2650
F 0 "D2" V 3300 2450 50  0000 L CNN
F 1 "LED_3v1_20mA" V 3200 2400 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" H 3250 2650 50  0001 C CNN
F 3 "~" H 3250 2650 50  0001 C CNN
	1    3250 2650
	0    -1   -1   0   
$EndComp
$Sheet
S 1400 5850 1100 250 
U 60A36862
F0 "RaspberryPi Floor" 50
F1 "raspi.sch" 50
$EndSheet
$Sheet
S 1400 6350 1100 250 
U 60B1A4B1
F0 "Servo Floor 1" 50
F1 "servo1.sch" 50
$EndSheet
$Sheet
S 1400 6850 1100 250 
U 60C0B142
F0 "Servo Floor 2" 50
F1 "servo2.sch" 50
$EndSheet
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 60CB4542
P 9700 3150
F 0 "J1" H 9808 3531 50  0000 C CNN
F 1 "Male_Long_1x6" H 9808 3440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9700 3150 50  0001 C CNN
F 3 "~" H 9700 3150 50  0001 C CNN
	1    9700 3150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 60CB57FC
P 9700 4000
F 0 "J2" H 9672 4024 50  0000 R CNN
F 1 "Male_Long_1x8" H 9672 3933 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9700 4000 50  0001 C CNN
F 3 "~" H 9700 4000 50  0001 C CNN
	1    9700 4000
	-1   0    0    -1  
$EndComp
Text GLabel 9150 2950 0    50   BiDi ~ 0
SCL
Text GLabel 9150 3050 0    50   BiDi ~ 0
SDA
Text GLabel 9150 4950 0    50   Input ~ 0
SIG1
Text GLabel 9150 4850 0    50   Input ~ 0
SIG2
Text GLabel 9150 4750 0    50   Input ~ 0
SIG3
Text GLabel 9150 3350 0    50   Input ~ 0
SIG4
Text GLabel 9150 3250 0    50   Input ~ 0
SIG5
Text GLabel 9150 3150 0    50   Input ~ 0
SIG6
Text GLabel 9150 3900 0    50   Input ~ 0
SIG7
Text GLabel 9150 3800 0    50   Input ~ 0
SIG8
Text GLabel 9150 3700 0    50   Input ~ 0
SIG9
Wire Wire Line
	9150 2950 9500 2950
Wire Wire Line
	9500 3050 9150 3050
Wire Wire Line
	9150 3150 9500 3150
Wire Wire Line
	9500 3350 9150 3350
Wire Wire Line
	9150 3450 9500 3450
Wire Wire Line
	9150 3700 9500 3700
Wire Wire Line
	9500 3800 9150 3800
Wire Wire Line
	9150 3900 9500 3900
Wire Wire Line
	9500 4000 9150 4000
Wire Wire Line
	9150 4100 9500 4100
Wire Wire Line
	9500 4200 9150 4200
Wire Wire Line
	9150 4300 9500 4300
Wire Wire Line
	9500 4650 9150 4650
Wire Wire Line
	9150 4400 9500 4400
$Comp
L Connector:Conn_01x10_Male J3
U 1 1 60D5A54F
P 9700 5050
F 0 "J3" H 9672 5074 50  0000 R CNN
F 1 "Male_Long_1x10" H 9672 4983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 9700 5050 50  0001 C CNN
F 3 "~" H 9700 5050 50  0001 C CNN
	1    9700 5050
	-1   0    0    -1  
$EndComp
Text GLabel 9150 5250 0    50   Input ~ 0
SIG10
Text GLabel 9150 5150 0    50   Input ~ 0
SIG11
Text GLabel 9150 5050 0    50   Input ~ 0
SIG12
Text GLabel 9150 4650 0    50   Input ~ 0
SIG13
Text GLabel 9150 4300 0    50   Input ~ 0
SIG14
Text GLabel 9150 3450 0    50   Input ~ 0
SIG15
Text GLabel 9150 4200 0    50   Input ~ 0
SIG16
Text GLabel 9150 4100 0    50   Input ~ 0
SIG17
Text GLabel 9150 4000 0    50   Input ~ 0
SIG18
Wire Wire Line
	9150 4750 9500 4750
Wire Wire Line
	9500 4850 9150 4850
Wire Wire Line
	9150 4950 9500 4950
Wire Wire Line
	9500 5050 9150 5050
Wire Wire Line
	9150 5150 9500 5150
Wire Wire Line
	9500 5250 9150 5250
Wire Wire Line
	9150 5350 9500 5350
Wire Wire Line
	9500 5450 9150 5450
Wire Wire Line
	9150 5550 9500 5550
Wire Wire Line
	9500 3250 9150 3250
Text GLabel 9150 4400 0    50   Output ~ 0
MOSFET(D)
Text GLabel 9150 5450 0    50   Input ~ 0
+6V6
Text GLabel 9150 5550 0    50   Input ~ 0
+5V
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 6073D2A8
P 3600 2000
F 0 "Q1" H 3888 2046 50  0000 L CNN
F 1 "TK25S06N1L_NMOS_GDS" H 3888 1955 50  0000 L CNN
F 2 "MyLibrary:TO-252-3_THT" H 3800 2100 50  0001 C CNN
F 3 "https://akizukidenshi.com/download/ds/toshiba/TK25S06N1L_datasheet_ja_20200624.pdf" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1500 3700 1800
Text GLabel 7300 5650 0    50   Output ~ 0
MOSFET(D)
Wire Wire Line
	7300 5650 7650 5650
Wire Bus Line
	7500 4700 7500 5400
Wire Bus Line
	7500 2350 7500 3050
Wire Bus Line
	5050 1400 5050 2600
Wire Bus Line
	5050 3750 5050 4950
$EndSCHEMATC

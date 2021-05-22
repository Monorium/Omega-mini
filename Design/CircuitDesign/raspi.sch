EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L raspberrypi_zerow_uhat-cache:Connector_Generic_Conn_02x20_Odd_Even U4
U 1 1 60945615
P 6450 3350
F 0 "U4" H 6500 2250 50  0000 C CNN
F 1 "RaspberryPi_Zero" H 6500 2150 50  0000 C CNN
F 2 "Module:Raspberry_Pi_Zero_Socketed_THT_FaceDown_MountingHoles" H 6450 3350 50  0001 C CNN
F 3 "" H 6450 3350 50  0001 C CNN
	1    6450 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60A403BC
P 7350 2850
F 0 "C6" H 7465 2896 50  0000 L CNN
F 1 "0.1u" H 7465 2805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7388 2700 50  0001 C CNN
F 3 "~" H 7350 2850 50  0001 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
NoConn ~ 6750 2550
NoConn ~ 6750 2750
NoConn ~ 6750 2850
NoConn ~ 6750 2950
NoConn ~ 6250 2950
NoConn ~ 6250 2850
NoConn ~ 6250 2750
NoConn ~ 6250 3050
NoConn ~ 6250 3150
NoConn ~ 6250 3250
NoConn ~ 6250 3350
NoConn ~ 6250 3450
NoConn ~ 6250 3550
NoConn ~ 6250 3650
NoConn ~ 6250 3750
NoConn ~ 6250 3850
NoConn ~ 6250 3950
NoConn ~ 6250 4050
NoConn ~ 6250 4150
NoConn ~ 6250 4250
NoConn ~ 6250 4350
NoConn ~ 6750 4350
NoConn ~ 6750 4250
NoConn ~ 6750 4150
NoConn ~ 6750 4050
NoConn ~ 6750 3950
NoConn ~ 6750 3850
NoConn ~ 6750 3750
NoConn ~ 6750 3650
NoConn ~ 6750 3550
NoConn ~ 6750 3450
NoConn ~ 6750 3350
NoConn ~ 6750 3250
NoConn ~ 6750 3150
NoConn ~ 6750 3050
$Comp
L Connector:Conn_01x06_Female J4
U 1 1 60ACFDE0
P 4600 3250
F 0 "J4" H 4628 3226 50  0000 L CNN
F 1 "Female_Long_1x6" H 4628 3135 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 4600 3250 50  0001 C CNN
F 3 "~" H 4600 3250 50  0001 C CNN
	1    4600 3250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6092D9A9
P 5550 2750
F 0 "R5" H 5620 2796 50  0000 L CNN
F 1 "10K" H 5620 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5480 2750 50  0001 C CNN
F 3 "~" H 5550 2750 50  0001 C CNN
	1    5550 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6092D9A3
P 5250 2750
F 0 "R4" H 5320 2796 50  0000 L CNN
F 1 "10K" H 5320 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5180 2750 50  0001 C CNN
F 3 "~" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2450 5250 2600
Wire Wire Line
	5250 2450 5550 2450
Wire Wire Line
	5550 2600 5550 2450
Connection ~ 5550 2450
Wire Wire Line
	5550 2450 6250 2450
Wire Wire Line
	6250 2550 5850 2550
Wire Wire Line
	6250 2650 5950 2650
Wire Wire Line
	7350 3000 7350 3150
Wire Wire Line
	7350 3150 7050 3150
Wire Wire Line
	7050 2650 6750 2650
Connection ~ 7350 3150
Wire Wire Line
	7050 2650 7050 3150
Wire Wire Line
	6750 2450 7350 2450
Connection ~ 7350 2450
Wire Wire Line
	7350 2450 7350 2700
Text GLabel 7900 3300 0    50   Output ~ 0
MOSFET(D)
Text GLabel 4800 2550 0    50   BiDi ~ 0
SCL
Text GLabel 4800 2650 0    50   BiDi ~ 0
SDA
$Comp
L Connector:Conn_01x08_Female J?
U 1 1 60DA6148
P 8550 2900
AR Path="/60DA6148" Ref="J?"  Part="1" 
AR Path="/60B1A4B1/60DA6148" Ref="J?"  Part="1" 
AR Path="/60A36862/60DA6148" Ref="J5"  Part="1" 
F 0 "J5" H 8578 2926 50  0000 L CNN
F 1 "Female_Long_1x8" H 8578 2835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 8550 2900 50  0001 C CNN
F 3 "~" H 8550 2900 50  0001 C CNN
	1    8550 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J?
U 1 1 60DAD60B
P 8550 3900
AR Path="/60DAD60B" Ref="J?"  Part="1" 
AR Path="/60B1A4B1/60DAD60B" Ref="J?"  Part="1" 
AR Path="/60A36862/60DAD60B" Ref="J6"  Part="1" 
F 0 "J6" H 8578 3926 50  0000 L CNN
F 1 "Female_Long_1x10" H 8578 3835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 8550 3900 50  0001 C CNN
F 3 "~" H 8550 3900 50  0001 C CNN
	1    8550 3900
	1    0    0    -1  
$EndComp
NoConn ~ 8350 2600
NoConn ~ 8350 2700
NoConn ~ 8350 2800
NoConn ~ 8350 2900
NoConn ~ 8350 3000
NoConn ~ 8350 3100
NoConn ~ 8350 3200
NoConn ~ 8350 3500
NoConn ~ 8350 3600
NoConn ~ 8350 3700
NoConn ~ 8350 3800
NoConn ~ 8350 3900
NoConn ~ 8350 4000
Wire Wire Line
	7900 3300 8100 3300
Wire Wire Line
	8100 3150 7350 3150
Wire Wire Line
	8150 2450 7350 2450
NoConn ~ 8350 4100
Wire Wire Line
	8100 3150 8100 3300
Wire Wire Line
	4800 2550 5100 2550
Wire Wire Line
	4800 2650 5000 2650
Wire Wire Line
	8350 3300 8100 3300
Connection ~ 8100 3300
Wire Wire Line
	5250 2900 5250 3150
Wire Wire Line
	5550 2900 5550 3050
Connection ~ 8150 4400
Wire Wire Line
	8350 4400 8150 4400
Wire Wire Line
	7900 4400 8150 4400
Text GLabel 7900 4400 0    50   Input ~ 0
+5V
NoConn ~ 8350 4200
NoConn ~ 8350 4300
Wire Wire Line
	8150 2450 8150 4400
Wire Wire Line
	5100 2550 5100 3050
Wire Wire Line
	5000 2650 5000 3150
Wire Wire Line
	5850 3150 5250 3150
Wire Wire Line
	5850 2550 5850 3150
Connection ~ 5000 3150
Wire Wire Line
	5000 3150 4800 3150
Connection ~ 5250 3150
Wire Wire Line
	5250 3150 5000 3150
Wire Wire Line
	5950 2650 5950 3050
Wire Wire Line
	5950 3050 5550 3050
Connection ~ 5100 3050
Wire Wire Line
	5100 3050 4800 3050
Connection ~ 5550 3050
Wire Wire Line
	5550 3050 5100 3050
$EndSCHEMATC

#######################################
# Basys3 Pin Assignments              #
#######################################

# pour : Disp1of4Digit.vhd
#        Disp4D.vhd
# version du 23/11/2021

############################
# On-board Slide Switches  #
############################

## Connection: A(0) de Disp1of4Digit sur SW0 => V17
#set_property PACKAGE_PIN V17 [get_ports {A[0]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]

## Connection: A(1) de Disp1of4Digit sur SW1 => V16
#set_property PACKAGE_PIN V16 [get_ports {A[1]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

## Connection: A(2) de Disp1of4Digit sur SW2 => W16
#set_property PACKAGE_PIN W16 [get_ports {A[2]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

## Connection: A(3) de Disp1of4Digit sur SW3 => W17
#set_property PACKAGE_PIN W17 [get_ports {A[3]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

## Connection: B(0) de Disp1of4Digit sur SW4 => W15
#set_property PACKAGE_PIN W15 [get_ports {B[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]

## Connection: B(1) de Disp1of4Digit sur SW5 => V15
#set_property PACKAGE_PIN V15 [get_ports {B[1]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]

## Connection: B(2) de Disp1of4Digit sur SW6 => W14
#set_property PACKAGE_PIN W14 [get_ports {B[2]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

## Connection: B(3) de Disp1of4Digit sur SW7 => W13
#set_property PACKAGE_PIN W13 [get_ports {B[3]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

## Connection: C(0) de Disp1of4Digit sur SW8 => V2
#set_property PACKAGE_PIN V2 [get_ports {C[0]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {C[0]}]

## Connection: C(1) de Disp1of4Digit sur SW9 => T3
#set_property PACKAGE_PIN T3 [get_ports {C[1]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {C[1]}]

## Connection: C(2) de Disp1of4Digit sur SW10 => T2
#set_property PACKAGE_PIN T2 [get_ports {C[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {C[2]}]

## Connection: C(3) de Disp1of4Digit sur SW11 => R3
#set_property PACKAGE_PIN R3 [get_ports {C[3]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {C[3]}]

## Connection: D(0) de Disp1of4Digit sur SW12 => W2
#set_property PACKAGE_PIN W2 [get_ports {D[0]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {D[0]}]

## Connection: D(1) de Disp1of4Digit sur SW13 => U1
#set_property PACKAGE_PIN U1 [get_ports {D[1]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {D[1]}]

## Connection: D(2) de Disp1of4Digit sur SW14 => T1
#set_property PACKAGE_PIN T1 [get_ports {D[2]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {D[2]}]

## Connection: D(3) de Disp1of4Digit sur SW15 => R2
#set_property PACKAGE_PIN R2 [get_ports {D[3]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {D[3]}]
##maintenant à vous de compléter un peu plus!
##n'oubliez pas de décommenter les lignes de compléter

## Connection: N(1) de Disp1of4Digit sur BTNR => T17
#set_property PACKAGE_PIN T17 [get_ports {N[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {N[1]}]

## Connection: N(0) de Disp1of4Digit sur BTND => U17
#set_property PACKAGE_PIN T1 [get_ports {N[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {N[0]}]

#####################################################
## Connection: Btn de ChronoEnContinu sur BTNU => T18
#set_property PACKAGE_PIN T18 [get_ports {Btn}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Btn}]

## Connection: CLR de ChronoEnContinu sur BTNL => W19
#set_property PACKAGE_PIN W19 [get_ports {CLR}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CLR}]
####################################################

set_property PACKAGE_PIN V17 [get_ports {EN}]	
set_property IOSTANDARD LVCMOS33 [get_ports {EN}]

set_property PACKAGE_PIN V16 [get_ports {CLR}]	
set_property IOSTANDARD LVCMOS33 [get_ports {CLR}]


###############################
# On-board 7-segment Display  #
###############################

# SEGMENTS

# Connection: S(6) de Disp1of4Digit sur ï¿½_vous => U7
set_property PACKAGE_PIN U7 [get_ports {S[6]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[6]}]

# Connection: S(5) de Disp1of4Digit sur ï¿½_vous => V5
set_property PACKAGE_PIN V5 [get_ports {S[5]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[5]}]

# Connection: S(4) de Disp1of4Digit sur ï¿½_vous => U5
set_property PACKAGE_PIN U5 [get_ports {S[4]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[4]}]

# Connection: S(3) de Disp1of4Digit sur ï¿½_vous => V8
set_property PACKAGE_PIN V8 [get_ports {S[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[3]}]

# Connection: S(2) de Disp1of4Digit sur ï¿½_vous => U8
set_property PACKAGE_PIN U8 [get_ports {S[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[2]}]

# Connection: S(1) de Disp1of4Digit sur ï¿½_vous => W6
set_property PACKAGE_PIN W6 [get_ports {S[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]

# Connection: S(0) de Disp1of4Digit sur ï¿½_vous => W7
set_property PACKAGE_PIN W7 [get_ports {S[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]

# ENABLE

# Connection: ENAN(3) de Disp1of4Digit sur AN3 => W4
set_property PACKAGE_PIN W4 [get_ports {ENAN[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[3]}]

# Connection: ENAN(2) de Disp1of4Digit sur AN2 => V4
set_property PACKAGE_PIN V4 [get_ports {ENAN[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[2]}]

# Connection: ENAN(1) de Disp1of4Digit sur AN1 => U4
set_property PACKAGE_PIN U4 [get_ports {ENAN[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[1]}]

# Connection: ENAN(0) de Disp1of4Digit sur AN0 => U2
set_property PACKAGE_PIN U2 [get_ports {ENAN[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[0]}]

###############################
#             LEDs            #
###############################

## Connection: Niveau de DFM sur LD0 => U16
#set_property PACKAGE_PIN U2 [get_ports {Niveau}]		
#set_property IOSTANDARD LVCMOS33 [get_ports {Niveau}]

###############################
#        On-board Timer       #
###############################

# CLOCK

# Connection: CLK de Cmpt0to3 sur W5
set_property PACKAGE_PIN W5 [get_ports {CLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]
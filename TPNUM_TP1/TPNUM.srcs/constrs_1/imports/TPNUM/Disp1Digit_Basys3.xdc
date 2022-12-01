#######################################
# Basys3 Pin Assignments              #
#######################################

# pour Disp1Digit.vhd
# version du 24/11/2016

############################
# On-board Slide Switches  #
############################

# Connection: V(3) de Disp1Digit sur SW3 => W17
set_property PACKAGE_PIN W17 [get_ports {V[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {V[3]}]

# Connection: V(2) de Disp1Digit sur SW2 => W16
set_property PACKAGE_PIN W16 [get_ports {V[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {V[2]}]

# Connection: V(1) de Disp1Digit sur SW1 => V16
set_property PACKAGE_PIN V16 [get_ports {V[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {V[1]}]

# Connection: V(0) de Disp1Digit sur SW0 => V17
set_property PACKAGE_PIN V17 [get_ports {V[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {V[0]}]

#maintenant � vous de compl�ter un peu plus!
#n'oubliez pas de d�-commenter les lignes � compl�ter

# Connection: N(1) de Disp1Digit sur SW15 => �_vous
set_property PACKAGE_PIN R2 [get_ports {N[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {N[1]}]

# Connection: N(0) de Disp1Digit sur SW14 => �_vous
set_property PACKAGE_PIN T1 [get_ports {N[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {N[0]}]



###############################
# On-board 7-segment Display  #
###############################

# SEGMENTS

# Connection: S(6) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN U7 [get_ports {S[6]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[6]}]

# Connection: S(5) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN V5 [get_ports {S[5]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[5]}]

# Connection: S(4) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN U5 [get_ports {S[4]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[4]}]

# Connection: S(3) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN V8 [get_ports {S[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[3]}]

# Connection: S(2) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN U8 [get_ports {S[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[2]}]

# Connection: S(1) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN W6 [get_ports {S[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]

# Connection: S(0) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN W7 [get_ports {S[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]

# ENABLE

# Connection: ENAN(3) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN W4 [get_ports {ENAN[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[3]}]

# Connection: ENAN(2) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN V4 [get_ports {ENAN[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[2]}]

# Connection: ENAN(1) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN U4 [get_ports {ENAN[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[1]}]

# Connection: ENAN(0) de Disp1Digit sur �_vous => �_vous
set_property PACKAGE_PIN U2 [get_ports {ENAN[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[0]}]


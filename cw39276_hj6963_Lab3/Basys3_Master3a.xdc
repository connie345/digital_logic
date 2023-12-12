## This file is the constraints file. It maps the input/output variables in your design modules to the actual hardware.
## Each pin corresponds to a device on the board. For example, pin V17 corresponds to SW0, the rightmost switch.
## We use CMOS (LVCMOS33) logic on the board, meaning a "0" is 0V, and a "1" is 3.3V.
## You don't need to understand every line of this file, but be able to describe what each of the 6 uncommented lines does.

## This file is a general .xdc for the Basys3 rev C board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal - Uncomment if needed (will be used in future labs)
#set_property PACKAGE_PIN W5 [get_ports clk]							
	#set_property IOSTANDARD LVCMOS33 [get_ports clk]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports {b}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b}]    
set_property PACKAGE_PIN V16 [get_ports {a}]			
	set_property IOSTANDARD LVCMOS33 [get_ports {a}]    					

## LEDs	
set_property PACKAGE_PIN U16 [get_ports {out}]			
set_property IOSTANDARD LVCMOS33 [get_ports {out}]    	

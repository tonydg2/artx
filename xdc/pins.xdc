
# part xcau25p-sfvb784-2-e

#set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]

set_property PACKAGE_PIN H26   [get_ports {SYSCLK_P}]; # G24
set_property PACKAGE_PIN G25   [get_ports {SYSCLK_N}]; # G25
set_property IOSTANDARD LVDS    [get_ports {SYSCLK*}];



set_property PACKAGE_PIN E26     [get_ports {LEDS[0]}]; # 
set_property PACKAGE_PIN H26     [get_ports {LEDS[1]}]; # 
set_property PACKAGE_PIN J26     [get_ports {LEDS[2]}]; # 
set_property PACKAGE_PIN K28     [get_ports {LEDS[3]}]; #  
set_property IOSTANDARD LVCMOS12  [get_ports {LEDS*}];

# gpio_sw_tri_i 
set_property PACKAGE_PIN K26     [get_ports {GPIO_SW[1]}]; # AB21, 
set_property PACKAGE_PIN K25     [get_ports {GPIO_SW[0]}]; # AB20, 
set_property IOSTANDARD LVCMOS12  [get_ports {GPIO_SW*}];


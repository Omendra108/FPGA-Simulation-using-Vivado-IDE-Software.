set_property -dict { PACKAGE_PIN K11    IOSTANDARD LVCMOS33 } [get_ports { A[0]}];#LSB
set_property -dict { PACKAGE_PIN M11    IOSTANDARD LVCMOS33 } [get_ports { A[1] }];
set_property -dict { PACKAGE_PIN N14    IOSTANDARD LVCMOS33 } [get_ports { A[2] }]; #MSB
set_property -dict { PACKAGE_PIN P12    IOSTANDARD LVCMOS33 } [get_ports { B[0] }]; #LCB
set_property -dict { PACKAGE_PIN N10    IOSTANDARD LVCMOS33 } [get_ports { B[1] }];
set_property -dict { PACKAGE_PIN P10    IOSTANDARD LVCMOS33 } [get_ports { B[2] }]; #MSB
set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports { SUM[0] }]; # LSB
set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports { SUM[1] }];
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { SUM[2] }];
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { SUM[3] }]; # MSB


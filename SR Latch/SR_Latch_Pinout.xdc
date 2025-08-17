set_property -dict { PACKAGE_PIN K11    IOSTANDARD LVCMOS33 } [get_ports { S }]; # S
set_property -dict { PACKAGE_PIN M11    IOSTANDARD LVCMOS33 } [get_ports { R }]; # R
set_property -dict { PACKAGE_PIN N14    IOSTANDARD LVCMOS33 } [get_ports { Q_0 }]; # Previous State(Qn)
set_property -dict { PACKAGE_PIN P13    IOSTANDARD LVCMOS33 } [get_ports { Q_1 }]; # Next State(Qn+1)
set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { Q_1_ }]; # ~Next State(~Qn+1)


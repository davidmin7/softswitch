create_clock -period 10.000 -name pcie_upstream_refclk [get_ports pcie_upstream_refclk_clk_n]
create_clock -period 10.000 -name pcie_downstream_refclk [get_ports pcie_downstream_refclk_clk_n]

set_property LOC GTY_REFCLK_X0Y6 [get_cells -hierarchical -filter NAME=~*versal_upstream*IBUFDS_GTE5*]
set_property LOC GTY_QUAD_X0Y3 [get_cells [get_cells -hierarchical -filter PRIMITIVE_SUBGROUP==GT] -filter NAME=~*versal_upstream*gt_quad_0/*]

set_property LOC GTY_REFCLK_X1Y2 [get_cells -hierarchical -filter NAME=~*versal_downstream*IBUFDS_GTE5*]
set_property LOC GTY_QUAD_X1Y1 [get_cells [get_cells -hierarchical -filter PRIMITIVE_SUBGROUP==GT] -filter NAME=~*versal_downstream*gt_quad_0/*]

set_property IOSTANDARD LVCMOS18 [get_ports sys_reset]
set_property PACKAGE_PIN G37 [get_ports sys_reset]
set_property PULLUP true [get_ports sys_reset]

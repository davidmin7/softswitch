# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}

proc update_PARAM_VALUE.CC_TUSER_WIDTH { PARAM_VALUE.CC_TUSER_WIDTH } {
	# Procedure called to update CC_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CC_TUSER_WIDTH { PARAM_VALUE.CC_TUSER_WIDTH } {
	# Procedure called to validate CC_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.CQ_TUSER_WIDTH { PARAM_VALUE.CQ_TUSER_WIDTH } {
	# Procedure called to update CQ_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CQ_TUSER_WIDTH { PARAM_VALUE.CQ_TUSER_WIDTH } {
	# Procedure called to validate CQ_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.RC_TUSER_WIDTH { PARAM_VALUE.RC_TUSER_WIDTH } {
	# Procedure called to update RC_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RC_TUSER_WIDTH { PARAM_VALUE.RC_TUSER_WIDTH } {
	# Procedure called to validate RC_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.RQ_TUSER_WIDTH { PARAM_VALUE.RQ_TUSER_WIDTH } {
	# Procedure called to update RQ_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RQ_TUSER_WIDTH { PARAM_VALUE.RQ_TUSER_WIDTH } {
	# Procedure called to validate RQ_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to update TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to validate TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.TKEEP_WIDTH { PARAM_VALUE.TKEEP_WIDTH } {
	# Procedure called to update TKEEP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TKEEP_WIDTH { PARAM_VALUE.TKEEP_WIDTH } {
	# Procedure called to validate TKEEP_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.TDATA_WIDTH { MODELPARAM_VALUE.TDATA_WIDTH PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDATA_WIDTH}] ${MODELPARAM_VALUE.TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.TKEEP_WIDTH { MODELPARAM_VALUE.TKEEP_WIDTH PARAM_VALUE.TKEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TKEEP_WIDTH}] ${MODELPARAM_VALUE.TKEEP_WIDTH}
}

proc update_MODELPARAM_VALUE.RQ_TUSER_WIDTH { MODELPARAM_VALUE.RQ_TUSER_WIDTH PARAM_VALUE.RQ_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RQ_TUSER_WIDTH}] ${MODELPARAM_VALUE.RQ_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.CQ_TUSER_WIDTH { MODELPARAM_VALUE.CQ_TUSER_WIDTH PARAM_VALUE.CQ_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CQ_TUSER_WIDTH}] ${MODELPARAM_VALUE.CQ_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.RC_TUSER_WIDTH { MODELPARAM_VALUE.RC_TUSER_WIDTH PARAM_VALUE.RC_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RC_TUSER_WIDTH}] ${MODELPARAM_VALUE.RC_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.CC_TUSER_WIDTH { MODELPARAM_VALUE.CC_TUSER_WIDTH PARAM_VALUE.CC_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CC_TUSER_WIDTH}] ${MODELPARAM_VALUE.CC_TUSER_WIDTH}
}


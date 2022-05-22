-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Apr  6 20:20:01 2021
-- Host        : davidmin running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/davidmin/Downloads/pl_pcie_build/ip_repo/pci_virtual_bridge_0.1/src/down_rq_to_down_rq_and_cfg_mgmt/down_rq_to_down_rq_and_cfg_mgmt_stub.vhdl
-- Design      : down_rq_to_down_rq_and_cfg_mgmt
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S-es1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity down_rq_to_down_rq_and_cfg_mgmt is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 84 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 169 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end down_rq_to_down_rq_and_cfg_mgmt;

architecture stub of down_rq_to_down_rq_and_cfg_mgmt is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid[0:0],s_axis_tready[0:0],s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tlast[0:0],s_axis_tdest[1:0],s_axis_tuser[84:0],m_axis_tvalid[1:0],m_axis_tready[1:0],m_axis_tdata[255:0],m_axis_tkeep[31:0],m_axis_tlast[1:0],m_axis_tdest[3:0],m_axis_tuser[169:0],s_decode_err[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_switch_v1_1_22_axis_switch,Vivado 2020.2";
begin
end;

-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Apr  6 20:39:16 2021
-- Host        : davidmin running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/davidmin/Downloads/pl_pcie_build/ip_repo/pci_virtual_bridge_0.1/src/down_rc_and_cfg_mgmt_to_up_cc/down_rc_and_cfg_mgmt_to_up_cc_sim_netlist.vhdl
-- Design      : down_rc_and_cfg_mgmt_to_up_cc
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsva2197-2MP-e-S-es1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_arb_rr is
  port (
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \arb_gnt_r_reg[0]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[1]_0\ : out STD_LOGIC;
    areset_reg : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \arb_gnt_r_reg[1]_1\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[0]_1\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \arb_gnt_r_reg[1]_2\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_i : in STD_LOGIC;
    \arb_req_i__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 65 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_arb_rr : entity is "axis_switch_v1_1_22_arb_rr";
end down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_arb_rr;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_arb_rr is
  signal arb_busy_ns : STD_LOGIC;
  signal arb_busy_r : STD_LOGIC;
  signal arb_done_i : STD_LOGIC;
  signal arb_gnt_ns : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \arb_gnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_1\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[1]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[1]_1\ : STD_LOGIC;
  signal arb_sel_i : STD_LOGIC;
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \barrel_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \barrel_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \barrel_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal f_mux_return : STD_LOGIC;
  signal port_priority_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arb_busy_r_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \arb_gnt_r[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \arb_sel_r[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \barrel_cntr[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \busy_r[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \busy_r[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[100]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[101]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[102]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[103]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[104]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[105]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[106]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[107]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[108]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[109]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[110]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[111]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[112]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[113]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[114]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[115]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[116]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axis_tdata[117]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axis_tdata[118]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axis_tdata[119]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[120]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_axis_tdata[121]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_axis_tdata[122]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_axis_tdata[123]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_axis_tdata[124]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_axis_tdata[125]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_axis_tdata[126]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_axis_tdata[127]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[32]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[33]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[34]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[35]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[36]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[37]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[38]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[39]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[40]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[41]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[42]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[43]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[44]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[45]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[46]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[47]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[48]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[49]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[50]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[51]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[52]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[53]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[54]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[55]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[56]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[57]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[58]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[59]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[60]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[61]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[62]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[63]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[64]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[65]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[66]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[67]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[68]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tdata[69]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[70]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tdata[71]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tdata[72]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tdata[73]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tdata[74]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tdata[75]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tdata[76]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[77]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[78]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[79]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[80]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[81]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[82]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[83]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[84]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[85]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[86]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[87]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[88]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[89]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[90]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[91]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[92]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[93]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[94]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[95]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[96]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[97]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[98]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[99]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tkeep[0]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_axis_tkeep[10]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_axis_tkeep[11]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_axis_tkeep[12]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_axis_tkeep[13]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_axis_tkeep[14]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axis_tkeep[15]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axis_tkeep[1]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_axis_tkeep[2]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_axis_tkeep[3]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_axis_tkeep[4]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_axis_tkeep[5]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_axis_tkeep[6]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_axis_tkeep[7]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_axis_tkeep[8]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_axis_tkeep[9]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_axis_tlast[0]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_axis_tuser[0]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_axis_tuser[10]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axis_tuser[11]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axis_tuser[12]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axis_tuser[13]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axis_tuser[14]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axis_tuser[15]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axis_tuser[16]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axis_tuser[17]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axis_tuser[18]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axis_tuser[19]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axis_tuser[1]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axis_tuser[20]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axis_tuser[21]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axis_tuser[22]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axis_tuser[23]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axis_tuser[24]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axis_tuser[25]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axis_tuser[26]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axis_tuser[27]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_axis_tuser[28]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_axis_tuser[29]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axis_tuser[2]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axis_tuser[30]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axis_tuser[31]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_axis_tuser[32]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_axis_tuser[3]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axis_tuser[4]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axis_tuser[5]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axis_tuser[6]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axis_tuser[7]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axis_tuser[8]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axis_tuser[9]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_axis_tready[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axis_tready[1]_INST_0\ : label is "soft_lutpair2";
begin
  \arb_gnt_r_reg[0]_0\ <= \^arb_gnt_r_reg[0]_0\;
  \arb_gnt_r_reg[0]_1\ <= \^arb_gnt_r_reg[0]_1\;
  \arb_gnt_r_reg[1]_0\ <= \^arb_gnt_r_reg[1]_0\;
  \arb_gnt_r_reg[1]_1\ <= \^arb_gnt_r_reg[1]_1\;
arb_busy_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => valid_i,
      I1 => arb_done_i,
      I2 => arb_busy_r,
      O => arb_busy_ns
    );
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns,
      Q => arb_busy_r,
      R => \arb_gnt_r_reg[1]_2\
    );
\arb_gnt_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => arb_done_i,
      I1 => arb_busy_r,
      I2 => valid_i,
      I3 => sel_i,
      O => \arb_gnt_r[0]_i_1_n_0\
    );
\arb_gnt_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => arb_done_i,
      I1 => arb_busy_r,
      I2 => valid_i,
      I3 => sel_i,
      O => arb_gnt_ns(1)
    );
\arb_gnt_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE00E0E000000000"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => \^arb_gnt_r_reg[1]_0\,
      I2 => s_axis_tvalid(0),
      I3 => s_axis_tvalid(1),
      I4 => arb_sel_i,
      I5 => m_axis_tready(0),
      O => arb_done_i
    );
\arb_gnt_r[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA8C8A80"
    )
        port map (
      I0 => port_priority_ns(1),
      I1 => \arb_req_i__1\(1),
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \arb_req_i__1\(0),
      I4 => port_priority_ns(0),
      O => sel_i
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[0]_1\,
      R => \arb_gnt_r_reg[1]_2\
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_gnt_ns(1),
      Q => \^arb_gnt_r_reg[1]_1\,
      R => \arb_gnt_r_reg[1]_2\
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => sel_i,
      I1 => valid_i,
      I2 => arb_busy_r,
      I3 => arb_done_i,
      I4 => arb_sel_i,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => arb_sel_i,
      R => \arb_gnt_r_reg[1]_2\
    );
\barrel_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^arb_gnt_r_reg[1]_1\,
      I1 => \^arb_gnt_r_reg[0]_1\,
      I2 => arb_busy_r,
      O => \barrel_cntr[0]_i_1_n_0\
    );
\barrel_cntr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[0]\,
      O => \barrel_cntr[0]_i_2_n_0\
    );
\barrel_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \barrel_cntr[0]_i_1_n_0\,
      D => \barrel_cntr[0]_i_2_n_0\,
      Q => \barrel_cntr_reg_n_0_[0]\,
      R => \arb_gnt_r_reg[1]_2\
    );
\busy_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAEAAA"
    )
        port map (
      I0 => \arb_gnt_r_reg[1]_2\,
      I1 => m_axis_tready(0),
      I2 => f_mux_return,
      I3 => \^arb_gnt_r_reg[1]_0\,
      I4 => \^arb_gnt_r_reg[0]_0\,
      O => areset_reg
    );
\busy_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tvalid(1),
      I2 => arb_sel_i,
      O => f_mux_return
    );
\gen_tdest_routing.busy_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEE0EEE0EEEEEEE"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]\,
      I1 => \^arb_gnt_r_reg[1]_1\,
      I2 => m_axis_tready(0),
      I3 => f_mux_return,
      I4 => \^arb_gnt_r_reg[1]_0\,
      I5 => \^arb_gnt_r_reg[0]_0\,
      O => \gen_tdest_routing.busy_ns\
    );
\gen_tdest_routing.busy_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEE0EEE0EEEEEEE"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I1 => \^arb_gnt_r_reg[0]_1\,
      I2 => m_axis_tready(0),
      I3 => f_mux_return,
      I4 => \^arb_gnt_r_reg[1]_0\,
      I5 => \^arb_gnt_r_reg[0]_0\,
      O => \gen_tdest_routing.busy_ns_0\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => s_axis_tdata(128),
      I2 => arb_sel_i,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[100]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(100),
      I1 => s_axis_tdata(228),
      I2 => arb_sel_i,
      O => m_axis_tdata(100)
    );
\m_axis_tdata[101]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(101),
      I1 => s_axis_tdata(229),
      I2 => arb_sel_i,
      O => m_axis_tdata(101)
    );
\m_axis_tdata[102]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(102),
      I1 => s_axis_tdata(230),
      I2 => arb_sel_i,
      O => m_axis_tdata(102)
    );
\m_axis_tdata[103]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(103),
      I1 => s_axis_tdata(231),
      I2 => arb_sel_i,
      O => m_axis_tdata(103)
    );
\m_axis_tdata[104]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(104),
      I1 => s_axis_tdata(232),
      I2 => arb_sel_i,
      O => m_axis_tdata(104)
    );
\m_axis_tdata[105]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(105),
      I1 => s_axis_tdata(233),
      I2 => arb_sel_i,
      O => m_axis_tdata(105)
    );
\m_axis_tdata[106]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(106),
      I1 => s_axis_tdata(234),
      I2 => arb_sel_i,
      O => m_axis_tdata(106)
    );
\m_axis_tdata[107]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(107),
      I1 => s_axis_tdata(235),
      I2 => arb_sel_i,
      O => m_axis_tdata(107)
    );
\m_axis_tdata[108]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(108),
      I1 => s_axis_tdata(236),
      I2 => arb_sel_i,
      O => m_axis_tdata(108)
    );
\m_axis_tdata[109]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(109),
      I1 => s_axis_tdata(237),
      I2 => arb_sel_i,
      O => m_axis_tdata(109)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => s_axis_tdata(138),
      I2 => arb_sel_i,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[110]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(110),
      I1 => s_axis_tdata(238),
      I2 => arb_sel_i,
      O => m_axis_tdata(110)
    );
\m_axis_tdata[111]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(111),
      I1 => s_axis_tdata(239),
      I2 => arb_sel_i,
      O => m_axis_tdata(111)
    );
\m_axis_tdata[112]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(112),
      I1 => s_axis_tdata(240),
      I2 => arb_sel_i,
      O => m_axis_tdata(112)
    );
\m_axis_tdata[113]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(113),
      I1 => s_axis_tdata(241),
      I2 => arb_sel_i,
      O => m_axis_tdata(113)
    );
\m_axis_tdata[114]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(114),
      I1 => s_axis_tdata(242),
      I2 => arb_sel_i,
      O => m_axis_tdata(114)
    );
\m_axis_tdata[115]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(115),
      I1 => s_axis_tdata(243),
      I2 => arb_sel_i,
      O => m_axis_tdata(115)
    );
\m_axis_tdata[116]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(116),
      I1 => s_axis_tdata(244),
      I2 => arb_sel_i,
      O => m_axis_tdata(116)
    );
\m_axis_tdata[117]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(117),
      I1 => s_axis_tdata(245),
      I2 => arb_sel_i,
      O => m_axis_tdata(117)
    );
\m_axis_tdata[118]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(118),
      I1 => s_axis_tdata(246),
      I2 => arb_sel_i,
      O => m_axis_tdata(118)
    );
\m_axis_tdata[119]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(119),
      I1 => s_axis_tdata(247),
      I2 => arb_sel_i,
      O => m_axis_tdata(119)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(139),
      I2 => arb_sel_i,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[120]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(120),
      I1 => s_axis_tdata(248),
      I2 => arb_sel_i,
      O => m_axis_tdata(120)
    );
\m_axis_tdata[121]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(121),
      I1 => s_axis_tdata(249),
      I2 => arb_sel_i,
      O => m_axis_tdata(121)
    );
\m_axis_tdata[122]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(122),
      I1 => s_axis_tdata(250),
      I2 => arb_sel_i,
      O => m_axis_tdata(122)
    );
\m_axis_tdata[123]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(123),
      I1 => s_axis_tdata(251),
      I2 => arb_sel_i,
      O => m_axis_tdata(123)
    );
\m_axis_tdata[124]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(124),
      I1 => s_axis_tdata(252),
      I2 => arb_sel_i,
      O => m_axis_tdata(124)
    );
\m_axis_tdata[125]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(125),
      I1 => s_axis_tdata(253),
      I2 => arb_sel_i,
      O => m_axis_tdata(125)
    );
\m_axis_tdata[126]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(126),
      I1 => s_axis_tdata(254),
      I2 => arb_sel_i,
      O => m_axis_tdata(126)
    );
\m_axis_tdata[127]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(127),
      I1 => s_axis_tdata(255),
      I2 => arb_sel_i,
      O => m_axis_tdata(127)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => s_axis_tdata(140),
      I2 => arb_sel_i,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => s_axis_tdata(141),
      I2 => arb_sel_i,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(142),
      I2 => arb_sel_i,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(143),
      I2 => arb_sel_i,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => s_axis_tdata(144),
      I2 => arb_sel_i,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => s_axis_tdata(145),
      I2 => arb_sel_i,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => s_axis_tdata(146),
      I2 => arb_sel_i,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(147),
      I2 => arb_sel_i,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(129),
      I2 => arb_sel_i,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(148),
      I2 => arb_sel_i,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(149),
      I2 => arb_sel_i,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => s_axis_tdata(150),
      I2 => arb_sel_i,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(151),
      I2 => arb_sel_i,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => s_axis_tdata(152),
      I2 => arb_sel_i,
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => s_axis_tdata(153),
      I2 => arb_sel_i,
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(26),
      I1 => s_axis_tdata(154),
      I2 => arb_sel_i,
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => s_axis_tdata(155),
      I2 => arb_sel_i,
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => s_axis_tdata(156),
      I2 => arb_sel_i,
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => s_axis_tdata(157),
      I2 => arb_sel_i,
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_axis_tdata(130),
      I2 => arb_sel_i,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => s_axis_tdata(158),
      I2 => arb_sel_i,
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => s_axis_tdata(159),
      I2 => arb_sel_i,
      O => m_axis_tdata(31)
    );
\m_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(32),
      I1 => s_axis_tdata(160),
      I2 => arb_sel_i,
      O => m_axis_tdata(32)
    );
\m_axis_tdata[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(33),
      I1 => s_axis_tdata(161),
      I2 => arb_sel_i,
      O => m_axis_tdata(33)
    );
\m_axis_tdata[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(34),
      I1 => s_axis_tdata(162),
      I2 => arb_sel_i,
      O => m_axis_tdata(34)
    );
\m_axis_tdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(35),
      I1 => s_axis_tdata(163),
      I2 => arb_sel_i,
      O => m_axis_tdata(35)
    );
\m_axis_tdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(36),
      I1 => s_axis_tdata(164),
      I2 => arb_sel_i,
      O => m_axis_tdata(36)
    );
\m_axis_tdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(37),
      I1 => s_axis_tdata(165),
      I2 => arb_sel_i,
      O => m_axis_tdata(37)
    );
\m_axis_tdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(38),
      I1 => s_axis_tdata(166),
      I2 => arb_sel_i,
      O => m_axis_tdata(38)
    );
\m_axis_tdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(39),
      I1 => s_axis_tdata(167),
      I2 => arb_sel_i,
      O => m_axis_tdata(39)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => s_axis_tdata(131),
      I2 => arb_sel_i,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(40),
      I1 => s_axis_tdata(168),
      I2 => arb_sel_i,
      O => m_axis_tdata(40)
    );
\m_axis_tdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(41),
      I1 => s_axis_tdata(169),
      I2 => arb_sel_i,
      O => m_axis_tdata(41)
    );
\m_axis_tdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(42),
      I1 => s_axis_tdata(170),
      I2 => arb_sel_i,
      O => m_axis_tdata(42)
    );
\m_axis_tdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(43),
      I1 => s_axis_tdata(171),
      I2 => arb_sel_i,
      O => m_axis_tdata(43)
    );
\m_axis_tdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(44),
      I1 => s_axis_tdata(172),
      I2 => arb_sel_i,
      O => m_axis_tdata(44)
    );
\m_axis_tdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(45),
      I1 => s_axis_tdata(173),
      I2 => arb_sel_i,
      O => m_axis_tdata(45)
    );
\m_axis_tdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(46),
      I1 => s_axis_tdata(174),
      I2 => arb_sel_i,
      O => m_axis_tdata(46)
    );
\m_axis_tdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(47),
      I1 => s_axis_tdata(175),
      I2 => arb_sel_i,
      O => m_axis_tdata(47)
    );
\m_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(48),
      I1 => s_axis_tdata(176),
      I2 => arb_sel_i,
      O => m_axis_tdata(48)
    );
\m_axis_tdata[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(49),
      I1 => s_axis_tdata(177),
      I2 => arb_sel_i,
      O => m_axis_tdata(49)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(132),
      I2 => arb_sel_i,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(50),
      I1 => s_axis_tdata(178),
      I2 => arb_sel_i,
      O => m_axis_tdata(50)
    );
\m_axis_tdata[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(51),
      I1 => s_axis_tdata(179),
      I2 => arb_sel_i,
      O => m_axis_tdata(51)
    );
\m_axis_tdata[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(52),
      I1 => s_axis_tdata(180),
      I2 => arb_sel_i,
      O => m_axis_tdata(52)
    );
\m_axis_tdata[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(53),
      I1 => s_axis_tdata(181),
      I2 => arb_sel_i,
      O => m_axis_tdata(53)
    );
\m_axis_tdata[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(54),
      I1 => s_axis_tdata(182),
      I2 => arb_sel_i,
      O => m_axis_tdata(54)
    );
\m_axis_tdata[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(55),
      I1 => s_axis_tdata(183),
      I2 => arb_sel_i,
      O => m_axis_tdata(55)
    );
\m_axis_tdata[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(56),
      I1 => s_axis_tdata(184),
      I2 => arb_sel_i,
      O => m_axis_tdata(56)
    );
\m_axis_tdata[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(57),
      I1 => s_axis_tdata(185),
      I2 => arb_sel_i,
      O => m_axis_tdata(57)
    );
\m_axis_tdata[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(58),
      I1 => s_axis_tdata(186),
      I2 => arb_sel_i,
      O => m_axis_tdata(58)
    );
\m_axis_tdata[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(59),
      I1 => s_axis_tdata(187),
      I2 => arb_sel_i,
      O => m_axis_tdata(59)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => s_axis_tdata(133),
      I2 => arb_sel_i,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(60),
      I1 => s_axis_tdata(188),
      I2 => arb_sel_i,
      O => m_axis_tdata(60)
    );
\m_axis_tdata[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(61),
      I1 => s_axis_tdata(189),
      I2 => arb_sel_i,
      O => m_axis_tdata(61)
    );
\m_axis_tdata[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(62),
      I1 => s_axis_tdata(190),
      I2 => arb_sel_i,
      O => m_axis_tdata(62)
    );
\m_axis_tdata[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(63),
      I1 => s_axis_tdata(191),
      I2 => arb_sel_i,
      O => m_axis_tdata(63)
    );
\m_axis_tdata[64]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(64),
      I1 => s_axis_tdata(192),
      I2 => arb_sel_i,
      O => m_axis_tdata(64)
    );
\m_axis_tdata[65]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(65),
      I1 => s_axis_tdata(193),
      I2 => arb_sel_i,
      O => m_axis_tdata(65)
    );
\m_axis_tdata[66]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(66),
      I1 => s_axis_tdata(194),
      I2 => arb_sel_i,
      O => m_axis_tdata(66)
    );
\m_axis_tdata[67]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(67),
      I1 => s_axis_tdata(195),
      I2 => arb_sel_i,
      O => m_axis_tdata(67)
    );
\m_axis_tdata[68]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(68),
      I1 => s_axis_tdata(196),
      I2 => arb_sel_i,
      O => m_axis_tdata(68)
    );
\m_axis_tdata[69]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(69),
      I1 => s_axis_tdata(197),
      I2 => arb_sel_i,
      O => m_axis_tdata(69)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => s_axis_tdata(134),
      I2 => arb_sel_i,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[70]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(70),
      I1 => s_axis_tdata(198),
      I2 => arb_sel_i,
      O => m_axis_tdata(70)
    );
\m_axis_tdata[71]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(71),
      I1 => s_axis_tdata(199),
      I2 => arb_sel_i,
      O => m_axis_tdata(71)
    );
\m_axis_tdata[72]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(72),
      I1 => s_axis_tdata(200),
      I2 => arb_sel_i,
      O => m_axis_tdata(72)
    );
\m_axis_tdata[73]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(73),
      I1 => s_axis_tdata(201),
      I2 => arb_sel_i,
      O => m_axis_tdata(73)
    );
\m_axis_tdata[74]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(74),
      I1 => s_axis_tdata(202),
      I2 => arb_sel_i,
      O => m_axis_tdata(74)
    );
\m_axis_tdata[75]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(75),
      I1 => s_axis_tdata(203),
      I2 => arb_sel_i,
      O => m_axis_tdata(75)
    );
\m_axis_tdata[76]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(76),
      I1 => s_axis_tdata(204),
      I2 => arb_sel_i,
      O => m_axis_tdata(76)
    );
\m_axis_tdata[77]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(77),
      I1 => s_axis_tdata(205),
      I2 => arb_sel_i,
      O => m_axis_tdata(77)
    );
\m_axis_tdata[78]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(78),
      I1 => s_axis_tdata(206),
      I2 => arb_sel_i,
      O => m_axis_tdata(78)
    );
\m_axis_tdata[79]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(79),
      I1 => s_axis_tdata(207),
      I2 => arb_sel_i,
      O => m_axis_tdata(79)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => s_axis_tdata(135),
      I2 => arb_sel_i,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[80]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(80),
      I1 => s_axis_tdata(208),
      I2 => arb_sel_i,
      O => m_axis_tdata(80)
    );
\m_axis_tdata[81]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(81),
      I1 => s_axis_tdata(209),
      I2 => arb_sel_i,
      O => m_axis_tdata(81)
    );
\m_axis_tdata[82]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(82),
      I1 => s_axis_tdata(210),
      I2 => arb_sel_i,
      O => m_axis_tdata(82)
    );
\m_axis_tdata[83]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(83),
      I1 => s_axis_tdata(211),
      I2 => arb_sel_i,
      O => m_axis_tdata(83)
    );
\m_axis_tdata[84]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(84),
      I1 => s_axis_tdata(212),
      I2 => arb_sel_i,
      O => m_axis_tdata(84)
    );
\m_axis_tdata[85]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(85),
      I1 => s_axis_tdata(213),
      I2 => arb_sel_i,
      O => m_axis_tdata(85)
    );
\m_axis_tdata[86]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(86),
      I1 => s_axis_tdata(214),
      I2 => arb_sel_i,
      O => m_axis_tdata(86)
    );
\m_axis_tdata[87]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(87),
      I1 => s_axis_tdata(215),
      I2 => arb_sel_i,
      O => m_axis_tdata(87)
    );
\m_axis_tdata[88]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(88),
      I1 => s_axis_tdata(216),
      I2 => arb_sel_i,
      O => m_axis_tdata(88)
    );
\m_axis_tdata[89]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(89),
      I1 => s_axis_tdata(217),
      I2 => arb_sel_i,
      O => m_axis_tdata(89)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => s_axis_tdata(136),
      I2 => arb_sel_i,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[90]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(90),
      I1 => s_axis_tdata(218),
      I2 => arb_sel_i,
      O => m_axis_tdata(90)
    );
\m_axis_tdata[91]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(91),
      I1 => s_axis_tdata(219),
      I2 => arb_sel_i,
      O => m_axis_tdata(91)
    );
\m_axis_tdata[92]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(92),
      I1 => s_axis_tdata(220),
      I2 => arb_sel_i,
      O => m_axis_tdata(92)
    );
\m_axis_tdata[93]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(93),
      I1 => s_axis_tdata(221),
      I2 => arb_sel_i,
      O => m_axis_tdata(93)
    );
\m_axis_tdata[94]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(94),
      I1 => s_axis_tdata(222),
      I2 => arb_sel_i,
      O => m_axis_tdata(94)
    );
\m_axis_tdata[95]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(95),
      I1 => s_axis_tdata(223),
      I2 => arb_sel_i,
      O => m_axis_tdata(95)
    );
\m_axis_tdata[96]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(96),
      I1 => s_axis_tdata(224),
      I2 => arb_sel_i,
      O => m_axis_tdata(96)
    );
\m_axis_tdata[97]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(97),
      I1 => s_axis_tdata(225),
      I2 => arb_sel_i,
      O => m_axis_tdata(97)
    );
\m_axis_tdata[98]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(98),
      I1 => s_axis_tdata(226),
      I2 => arb_sel_i,
      O => m_axis_tdata(98)
    );
\m_axis_tdata[99]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(99),
      I1 => s_axis_tdata(227),
      I2 => arb_sel_i,
      O => m_axis_tdata(99)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => s_axis_tdata(137),
      I2 => arb_sel_i,
      O => m_axis_tdata(9)
    );
\m_axis_tkeep[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(0),
      I1 => s_axis_tkeep(16),
      I2 => arb_sel_i,
      O => m_axis_tkeep(0)
    );
\m_axis_tkeep[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(10),
      I1 => s_axis_tkeep(26),
      I2 => arb_sel_i,
      O => m_axis_tkeep(10)
    );
\m_axis_tkeep[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(11),
      I1 => s_axis_tkeep(27),
      I2 => arb_sel_i,
      O => m_axis_tkeep(11)
    );
\m_axis_tkeep[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(12),
      I1 => s_axis_tkeep(28),
      I2 => arb_sel_i,
      O => m_axis_tkeep(12)
    );
\m_axis_tkeep[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(13),
      I1 => s_axis_tkeep(29),
      I2 => arb_sel_i,
      O => m_axis_tkeep(13)
    );
\m_axis_tkeep[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(14),
      I1 => s_axis_tkeep(30),
      I2 => arb_sel_i,
      O => m_axis_tkeep(14)
    );
\m_axis_tkeep[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(15),
      I1 => s_axis_tkeep(31),
      I2 => arb_sel_i,
      O => m_axis_tkeep(15)
    );
\m_axis_tkeep[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(1),
      I1 => s_axis_tkeep(17),
      I2 => arb_sel_i,
      O => m_axis_tkeep(1)
    );
\m_axis_tkeep[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(2),
      I1 => s_axis_tkeep(18),
      I2 => arb_sel_i,
      O => m_axis_tkeep(2)
    );
\m_axis_tkeep[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(3),
      I1 => s_axis_tkeep(19),
      I2 => arb_sel_i,
      O => m_axis_tkeep(3)
    );
\m_axis_tkeep[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(4),
      I1 => s_axis_tkeep(20),
      I2 => arb_sel_i,
      O => m_axis_tkeep(4)
    );
\m_axis_tkeep[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(5),
      I1 => s_axis_tkeep(21),
      I2 => arb_sel_i,
      O => m_axis_tkeep(5)
    );
\m_axis_tkeep[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(6),
      I1 => s_axis_tkeep(22),
      I2 => arb_sel_i,
      O => m_axis_tkeep(6)
    );
\m_axis_tkeep[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(7),
      I1 => s_axis_tkeep(23),
      I2 => arb_sel_i,
      O => m_axis_tkeep(7)
    );
\m_axis_tkeep[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(8),
      I1 => s_axis_tkeep(24),
      I2 => arb_sel_i,
      O => m_axis_tkeep(8)
    );
\m_axis_tkeep[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tkeep(9),
      I1 => s_axis_tkeep(25),
      I2 => arb_sel_i,
      O => m_axis_tkeep(9)
    );
\m_axis_tlast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tlast(0),
      I1 => s_axis_tlast(1),
      I2 => arb_sel_i,
      O => m_axis_tlast(0)
    );
\m_axis_tuser[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(0),
      I1 => s_axis_tuser(33),
      I2 => arb_sel_i,
      O => m_axis_tuser(0)
    );
\m_axis_tuser[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(10),
      I1 => s_axis_tuser(43),
      I2 => arb_sel_i,
      O => m_axis_tuser(10)
    );
\m_axis_tuser[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(11),
      I1 => s_axis_tuser(44),
      I2 => arb_sel_i,
      O => m_axis_tuser(11)
    );
\m_axis_tuser[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(12),
      I1 => s_axis_tuser(45),
      I2 => arb_sel_i,
      O => m_axis_tuser(12)
    );
\m_axis_tuser[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(13),
      I1 => s_axis_tuser(46),
      I2 => arb_sel_i,
      O => m_axis_tuser(13)
    );
\m_axis_tuser[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(14),
      I1 => s_axis_tuser(47),
      I2 => arb_sel_i,
      O => m_axis_tuser(14)
    );
\m_axis_tuser[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(15),
      I1 => s_axis_tuser(48),
      I2 => arb_sel_i,
      O => m_axis_tuser(15)
    );
\m_axis_tuser[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(16),
      I1 => s_axis_tuser(49),
      I2 => arb_sel_i,
      O => m_axis_tuser(16)
    );
\m_axis_tuser[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(17),
      I1 => s_axis_tuser(50),
      I2 => arb_sel_i,
      O => m_axis_tuser(17)
    );
\m_axis_tuser[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(18),
      I1 => s_axis_tuser(51),
      I2 => arb_sel_i,
      O => m_axis_tuser(18)
    );
\m_axis_tuser[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(19),
      I1 => s_axis_tuser(52),
      I2 => arb_sel_i,
      O => m_axis_tuser(19)
    );
\m_axis_tuser[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(1),
      I1 => s_axis_tuser(34),
      I2 => arb_sel_i,
      O => m_axis_tuser(1)
    );
\m_axis_tuser[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(20),
      I1 => s_axis_tuser(53),
      I2 => arb_sel_i,
      O => m_axis_tuser(20)
    );
\m_axis_tuser[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(21),
      I1 => s_axis_tuser(54),
      I2 => arb_sel_i,
      O => m_axis_tuser(21)
    );
\m_axis_tuser[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(22),
      I1 => s_axis_tuser(55),
      I2 => arb_sel_i,
      O => m_axis_tuser(22)
    );
\m_axis_tuser[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(23),
      I1 => s_axis_tuser(56),
      I2 => arb_sel_i,
      O => m_axis_tuser(23)
    );
\m_axis_tuser[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(24),
      I1 => s_axis_tuser(57),
      I2 => arb_sel_i,
      O => m_axis_tuser(24)
    );
\m_axis_tuser[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(25),
      I1 => s_axis_tuser(58),
      I2 => arb_sel_i,
      O => m_axis_tuser(25)
    );
\m_axis_tuser[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(26),
      I1 => s_axis_tuser(59),
      I2 => arb_sel_i,
      O => m_axis_tuser(26)
    );
\m_axis_tuser[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(27),
      I1 => s_axis_tuser(60),
      I2 => arb_sel_i,
      O => m_axis_tuser(27)
    );
\m_axis_tuser[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(28),
      I1 => s_axis_tuser(61),
      I2 => arb_sel_i,
      O => m_axis_tuser(28)
    );
\m_axis_tuser[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(29),
      I1 => s_axis_tuser(62),
      I2 => arb_sel_i,
      O => m_axis_tuser(29)
    );
\m_axis_tuser[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(2),
      I1 => s_axis_tuser(35),
      I2 => arb_sel_i,
      O => m_axis_tuser(2)
    );
\m_axis_tuser[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(30),
      I1 => s_axis_tuser(63),
      I2 => arb_sel_i,
      O => m_axis_tuser(30)
    );
\m_axis_tuser[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(31),
      I1 => s_axis_tuser(64),
      I2 => arb_sel_i,
      O => m_axis_tuser(31)
    );
\m_axis_tuser[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(32),
      I1 => s_axis_tuser(65),
      I2 => arb_sel_i,
      O => m_axis_tuser(32)
    );
\m_axis_tuser[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(3),
      I1 => s_axis_tuser(36),
      I2 => arb_sel_i,
      O => m_axis_tuser(3)
    );
\m_axis_tuser[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(4),
      I1 => s_axis_tuser(37),
      I2 => arb_sel_i,
      O => m_axis_tuser(4)
    );
\m_axis_tuser[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(5),
      I1 => s_axis_tuser(38),
      I2 => arb_sel_i,
      O => m_axis_tuser(5)
    );
\m_axis_tuser[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(6),
      I1 => s_axis_tuser(39),
      I2 => arb_sel_i,
      O => m_axis_tuser(6)
    );
\m_axis_tuser[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(7),
      I1 => s_axis_tuser(40),
      I2 => arb_sel_i,
      O => m_axis_tuser(7)
    );
\m_axis_tuser[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(8),
      I1 => s_axis_tuser(41),
      I2 => arb_sel_i,
      O => m_axis_tuser(8)
    );
\m_axis_tuser[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axis_tuser(9),
      I1 => s_axis_tuser(42),
      I2 => arb_sel_i,
      O => m_axis_tuser(9)
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8D8D8D8D8D8D800"
    )
        port map (
      I0 => arb_sel_i,
      I1 => s_axis_tvalid(1),
      I2 => s_axis_tvalid(0),
      I3 => \^arb_gnt_r_reg[1]_0\,
      I4 => \^arb_gnt_r_reg[0]_1\,
      I5 => \gen_tdest_router.busy_r\(0),
      O => m_axis_tvalid(0)
    );
\port_priority_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \barrel_cntr[0]_i_1_n_0\,
      D => port_priority_ns(0),
      Q => port_priority_ns(1),
      R => \arb_gnt_r_reg[1]_2\
    );
\port_priority_r_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \barrel_cntr[0]_i_1_n_0\,
      D => port_priority_ns(1),
      Q => port_priority_ns(0),
      S => \arb_gnt_r_reg[1]_2\
    );
\s_axis_tready[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \^arb_gnt_r_reg[0]_0\,
      I2 => m_axis_tready(0),
      O => s_axis_tready(0)
    );
\s_axis_tready[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_1\,
      I1 => \gen_tdest_router.busy_r\(0),
      O => \^arb_gnt_r_reg[0]_0\
    );
\s_axis_tready[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid(1),
      I1 => \^arb_gnt_r_reg[1]_0\,
      I2 => m_axis_tready(0),
      O => s_axis_tready(1)
    );
\s_axis_tready[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[1]_1\,
      I1 => \gen_tdest_router.busy_r\(1),
      O => \^arb_gnt_r_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_arb_responder is
  port (
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \busy_r_reg[0]_0\ : in STD_LOGIC;
    \busy_r_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \busy_r_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_arb_responder : entity is "axis_switch_v1_1_22_axisc_arb_responder";
end down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_arb_responder;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_arb_responder is
begin
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r_reg[0]_1\,
      Q => \gen_tdest_router.busy_r\(0),
      R => \busy_r_reg[0]_0\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r_reg[1]_0\,
      Q => \gen_tdest_router.busy_r\(1),
      R => \busy_r_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    \arb_req_i__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_req_suppress : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder : entity is "axis_switch_v1_1_22_axisc_decoder";
end down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
\arb_gnt_r[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_req_suppress(0),
      I1 => s_axis_tvalid(0),
      I2 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I3 => arb_gnt_i(0),
      O => \arb_req_i__1\(0)
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder_0 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    \arb_req_i__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid_i : out STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_busy_r_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder_0 : entity is "axis_switch_v1_1_22_axisc_decoder";
end down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder_0;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder_0 is
  signal \^arb_req_i__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
begin
  \arb_req_i__1\(0) <= \^arb_req_i__1\(0);
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
\arb_gnt_r[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \^arb_req_i__1\(0),
      I1 => arb_gnt_i(0),
      I2 => arb_busy_r_reg,
      I3 => s_axis_tvalid(0),
      I4 => s_req_suppress(0),
      O => valid_i
    );
\arb_gnt_r[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_req_suppress(1),
      I1 => s_axis_tvalid(1),
      I2 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I3 => arb_gnt_i(1),
      O => \^arb_req_i__1\(0)
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch_arbiter is
  port (
    areset : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \arb_gnt_r_reg[0]\ : out STD_LOGIC;
    \arb_gnt_r_reg[1]\ : out STD_LOGIC;
    areset_reg_0 : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    arb_gnt_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 32 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_i : in STD_LOGIC;
    \arb_req_i__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 65 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch_arbiter : entity is "axis_switch_v1_1_22_axis_switch_arbiter";
end down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch_arbiter;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch_arbiter is
  signal \^areset\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  areset <= \^areset\;
areset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => \^areset\,
      R => '0'
    );
\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0\: entity work.down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_arb_rr
     port map (
      aclk => aclk,
      \arb_gnt_r_reg[0]_0\ => \arb_gnt_r_reg[0]\,
      \arb_gnt_r_reg[0]_1\ => arb_gnt_i(0),
      \arb_gnt_r_reg[1]_0\ => \arb_gnt_r_reg[1]\,
      \arb_gnt_r_reg[1]_1\ => arb_gnt_i(1),
      \arb_gnt_r_reg[1]_2\ => \^areset\,
      \arb_req_i__1\(1 downto 0) => \arb_req_i__1\(1 downto 0),
      areset_reg => areset_reg_0,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_tdest_routing.busy_r_reg[0]_0\,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tkeep(15 downto 0) => m_axis_tkeep(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tuser(32 downto 0) => m_axis_tuser(32 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(255 downto 0) => s_axis_tdata(255 downto 0),
      s_axis_tkeep(31 downto 0) => s_axis_tkeep(31 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tuser(65 downto 0) => s_axis_tuser(65 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      valid_i => valid_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_transfer_mux is
  port (
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \busy_r_reg[0]\ : in STD_LOGIC;
    \busy_r_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \busy_r_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_transfer_mux : entity is "axis_switch_v1_1_22_axisc_transfer_mux";
end down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_transfer_mux;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_transfer_mux is
begin
\gen_tdest_router.axisc_arb_responder\: entity work.down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_arb_responder
     port map (
      aclk => aclk,
      \busy_r_reg[0]_0\ => \busy_r_reg[0]\,
      \busy_r_reg[0]_1\ => \busy_r_reg[0]_0\,
      \busy_r_reg[1]_0\ => \busy_r_reg[1]\,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 65 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 32 downto 0 );
    arb_req : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_last : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_dest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_user : out STD_LOGIC_VECTOR ( 65 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 155;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 128;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 33;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "versal";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "1'b0";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "2'b11";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "1'b0";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 2;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 32;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 15;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "axis_switch_v1_1_22_axis_switch";
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "2'b11";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch : entity is 178;
end down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal areset : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_3\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_4\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_5\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i\ : STD_LOGIC;
  signal \gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_0\ : STD_LOGIC;
begin
  arb_dest(1) <= \<const0>\;
  arb_dest(0) <= \<const0>\;
  arb_done(0) <= \<const0>\;
  arb_id(1) <= \<const0>\;
  arb_id(0) <= \<const0>\;
  arb_last(1) <= \<const0>\;
  arb_last(0) <= \<const0>\;
  arb_req(1) <= \<const0>\;
  arb_req(0) <= \<const0>\;
  arb_user(65) <= \<const0>\;
  arb_user(64) <= \<const0>\;
  arb_user(63) <= \<const0>\;
  arb_user(62) <= \<const0>\;
  arb_user(61) <= \<const0>\;
  arb_user(60) <= \<const0>\;
  arb_user(59) <= \<const0>\;
  arb_user(58) <= \<const0>\;
  arb_user(57) <= \<const0>\;
  arb_user(56) <= \<const0>\;
  arb_user(55) <= \<const0>\;
  arb_user(54) <= \<const0>\;
  arb_user(53) <= \<const0>\;
  arb_user(52) <= \<const0>\;
  arb_user(51) <= \<const0>\;
  arb_user(50) <= \<const0>\;
  arb_user(49) <= \<const0>\;
  arb_user(48) <= \<const0>\;
  arb_user(47) <= \<const0>\;
  arb_user(46) <= \<const0>\;
  arb_user(45) <= \<const0>\;
  arb_user(44) <= \<const0>\;
  arb_user(43) <= \<const0>\;
  arb_user(42) <= \<const0>\;
  arb_user(41) <= \<const0>\;
  arb_user(40) <= \<const0>\;
  arb_user(39) <= \<const0>\;
  arb_user(38) <= \<const0>\;
  arb_user(37) <= \<const0>\;
  arb_user(36) <= \<const0>\;
  arb_user(35) <= \<const0>\;
  arb_user(34) <= \<const0>\;
  arb_user(33) <= \<const0>\;
  arb_user(32) <= \<const0>\;
  arb_user(31) <= \<const0>\;
  arb_user(30) <= \<const0>\;
  arb_user(29) <= \<const0>\;
  arb_user(28) <= \<const0>\;
  arb_user(27) <= \<const0>\;
  arb_user(26) <= \<const0>\;
  arb_user(25) <= \<const0>\;
  arb_user(24) <= \<const0>\;
  arb_user(23) <= \<const0>\;
  arb_user(22) <= \<const0>\;
  arb_user(21) <= \<const0>\;
  arb_user(20) <= \<const0>\;
  arb_user(19) <= \<const0>\;
  arb_user(18) <= \<const0>\;
  arb_user(17) <= \<const0>\;
  arb_user(16) <= \<const0>\;
  arb_user(15) <= \<const0>\;
  arb_user(14) <= \<const0>\;
  arb_user(13) <= \<const0>\;
  arb_user(12) <= \<const0>\;
  arb_user(11) <= \<const0>\;
  arb_user(10) <= \<const0>\;
  arb_user(9) <= \<const0>\;
  arb_user(8) <= \<const0>\;
  arb_user(7) <= \<const0>\;
  arb_user(6) <= \<const0>\;
  arb_user(5) <= \<const0>\;
  arb_user(4) <= \<const0>\;
  arb_user(3) <= \<const0>\;
  arb_user(2) <= \<const0>\;
  arb_user(1) <= \<const0>\;
  arb_user(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(15) <= \<const0>\;
  m_axis_tstrb(14) <= \<const0>\;
  m_axis_tstrb(13) <= \<const0>\;
  m_axis_tstrb(12) <= \<const0>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_decode_err(1) <= \<const0>\;
  s_decode_err(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_decoder[0].axisc_decoder_0\: entity work.down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder
     port map (
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(0),
      \arb_req_i__1\(0) => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1\(0),
      areset => areset,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_req_suppress(0) => s_req_suppress(0)
    );
\gen_decoder[1].axisc_decoder_0\: entity work.down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_decoder_0
     port map (
      aclk => aclk,
      arb_busy_r_reg => \gen_decoder[0].axisc_decoder_0_n_0\,
      arb_gnt_i(1 downto 0) => arb_gnt_i(1 downto 0),
      \arb_req_i__1\(0) => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1\(1),
      areset => areset,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[1].axisc_decoder_0_n_0\,
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0),
      valid_i => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i\
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter\: entity work.down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch_arbiter
     port map (
      aclk => aclk,
      arb_gnt_i(1 downto 0) => arb_gnt_i(1 downto 0),
      \arb_gnt_r_reg[0]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_3\,
      \arb_gnt_r_reg[1]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_4\,
      \arb_req_i__1\(1 downto 0) => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__1\(1 downto 0),
      areset => areset,
      areset_reg_0 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_5\,
      aresetn => aresetn,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_decoder[1].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tkeep(15 downto 0) => m_axis_tkeep(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tuser(32 downto 0) => m_axis_tuser(32 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(255 downto 0) => s_axis_tdata(255 downto 0),
      s_axis_tkeep(31 downto 0) => s_axis_tkeep(31 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tuser(65 downto 0) => s_axis_tuser(65 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      valid_i => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i\
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axisc_transfer_mux
     port map (
      aclk => aclk,
      \busy_r_reg[0]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_5\,
      \busy_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_3\,
      \busy_r_reg[1]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_22_axis_switch_arbiter_n_4\,
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity down_rc_and_cfg_mgmt_to_up_cc is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 65 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 32 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of down_rc_and_cfg_mgmt_to_up_cc : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of down_rc_and_cfg_mgmt_to_up_cc : entity is "down_rc_and_cfg_mgmt_to_up_cc,axis_switch_v1_1_22_axis_switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of down_rc_and_cfg_mgmt_to_up_cc : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of down_rc_and_cfg_mgmt_to_up_cc : entity is "axis_switch_v1_1_22_axis_switch,Vivado 2020.2";
end down_rc_and_cfg_mgmt_to_up_cc;

architecture STRUCTURE of down_rc_and_cfg_mgmt_to_up_cc is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_arb_dest_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_done_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_arb_id_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_last_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_req_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_user_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of inst : label is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of inst : label is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of inst : label is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 155;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 128;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 33;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of inst : label is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "versal";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of inst : label is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of inst : label is 1;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of inst : label is "1'b0";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of inst : label is "2'b11";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of inst : label is "1'b0";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of inst : label is 2;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of inst : label is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of inst : label is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of inst : label is 15;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of inst : label is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of inst : label is 4;
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of inst : label is "2'b11";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of inst : label is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 178;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [127:0] [127:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [127:0] [255:128]";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [15:0] [15:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [15:0] [31:16]";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [32:0] [32:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [32:0] [65:33]";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1]";
begin
  s_decode_err(1) <= \<const0>\;
  s_decode_err(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.down_rc_and_cfg_mgmt_to_up_cc_axis_switch_v1_1_22_axis_switch
     port map (
      aclk => aclk,
      aclken => '1',
      arb_dest(1 downto 0) => NLW_inst_arb_dest_UNCONNECTED(1 downto 0),
      arb_done(0) => NLW_inst_arb_done_UNCONNECTED(0),
      arb_gnt(1 downto 0) => B"00",
      arb_id(1 downto 0) => NLW_inst_arb_id_UNCONNECTED(1 downto 0),
      arb_last(1 downto 0) => NLW_inst_arb_last_UNCONNECTED(1 downto 0),
      arb_req(1 downto 0) => NLW_inst_arb_req_UNCONNECTED(1 downto 0),
      arb_sel(0) => '0',
      arb_user(65 downto 0) => NLW_inst_arb_user_UNCONNECTED(65 downto 0),
      aresetn => aresetn,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(15 downto 0) => m_axis_tkeep(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tstrb(15 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(15 downto 0),
      m_axis_tuser(32 downto 0) => m_axis_tuser(32 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axi_ctrl_aclk => '0',
      s_axi_ctrl_araddr(6 downto 0) => B"0000000",
      s_axi_ctrl_aresetn => '0',
      s_axi_ctrl_arready => NLW_inst_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(6 downto 0) => B"0000000",
      s_axi_ctrl_awready => NLW_inst_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_inst_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_inst_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_inst_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_inst_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axis_tdata(255 downto 0) => s_axis_tdata(255 downto 0),
      s_axis_tdest(1 downto 0) => B"00",
      s_axis_tid(1 downto 0) => B"00",
      s_axis_tkeep(31 downto 0) => s_axis_tkeep(31 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tstrb(31 downto 0) => B"11111111111111111111111111111111",
      s_axis_tuser(65 downto 0) => s_axis_tuser(65 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_decode_err(1 downto 0) => NLW_inst_s_decode_err_UNCONNECTED(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0)
    );
end STRUCTURE;

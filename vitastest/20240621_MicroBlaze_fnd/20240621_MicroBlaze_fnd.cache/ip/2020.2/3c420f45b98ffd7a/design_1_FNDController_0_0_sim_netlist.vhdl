-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Jun 21 14:12:08 2024
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FNDController_0_0_sim_netlist.vhdl
-- Design      : design_1_FNDController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_reg2_reg[11]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[13]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[1]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[1]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[12]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[1]\ : out STD_LOGIC;
    \counter_reg[1]_0\ : out STD_LOGIC;
    \slv_reg2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[1]_1\ : out STD_LOGIC;
    \counter_reg[1]_2\ : out STD_LOGIC;
    \counter_reg[1]_3\ : out STD_LOGIC;
    \counter_reg[1]_4\ : out STD_LOGIC;
    \slv_reg2_reg[10]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[12]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[13]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[13]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[13]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[12]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[10]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[12]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[11]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[9]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[10]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[4]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[8]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[12]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__17_carry__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_10000__45_carry\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_10000__45_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_10000__45_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_1000_inferred__0/i___75_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry__1_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \U_fndController/o_digit_100\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \i___1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \i___1_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \i___1_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \i___1_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \i___1_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \i___1_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \i___1_carry__2_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 14 );
  signal \^slv_reg2_reg[10]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^slv_reg2_reg[2]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^slv_reg2_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[4]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^slv_reg2_reg[8]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_29\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_39\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_41\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_54\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_66\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_68\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_69\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_70\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i___1_carry__1_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i___1_carry__1_i_11\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i___1_carry__1_i_13\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i___1_carry__1_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i___1_carry__1_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i___1_carry__2_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i___1_carry__2_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i___1_carry__2_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i___1_carry__2_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i___1_carry__2_i_9\ : label is "soft_lutpair9";
  attribute HLUTNM : string;
  attribute HLUTNM of o_digit_10000_carry_i_1 : label is "lutpair1";
  attribute HLUTNM of o_digit_10000_carry_i_2 : label is "lutpair0";
  attribute HLUTNM of o_digit_10000_carry_i_4 : label is "lutpair1";
  attribute HLUTNM of o_digit_10000_carry_i_7 : label is "lutpair0";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair3";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  \slv_reg2_reg[10]_0\(2 downto 0) <= \^slv_reg2_reg[10]_0\(2 downto 0);
  \slv_reg2_reg[2]_0\(1 downto 0) <= \^slv_reg2_reg[2]_0\(1 downto 0);
  \slv_reg2_reg[3]_0\(0) <= \^slv_reg2_reg[3]_0\(0);
  \slv_reg2_reg[4]_0\(3 downto 0) <= \^slv_reg2_reg[4]_0\(3 downto 0);
  \slv_reg2_reg[8]_0\(3 downto 0) <= \^slv_reg2_reg[8]_0\(3 downto 0);
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(0),
      I1 => slv_reg3(0),
      I2 => slv_reg0(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(10),
      I1 => slv_reg3(10),
      I2 => slv_reg0(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(11),
      I1 => slv_reg3(11),
      I2 => slv_reg0(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(12),
      I1 => slv_reg3(12),
      I2 => slv_reg0(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(13),
      I1 => slv_reg3(13),
      I2 => slv_reg0(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(14),
      I1 => slv_reg3(14),
      I2 => slv_reg0(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(15),
      I1 => slv_reg3(15),
      I2 => slv_reg0(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => slv_reg3(16),
      I2 => slv_reg0(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => slv_reg3(17),
      I2 => slv_reg0(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(18),
      I1 => slv_reg3(18),
      I2 => slv_reg0(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => slv_reg3(19),
      I2 => slv_reg0(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(1),
      I1 => slv_reg3(1),
      I2 => slv_reg0(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(20),
      I1 => slv_reg3(20),
      I2 => slv_reg0(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(21),
      I1 => slv_reg3(21),
      I2 => slv_reg0(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(22),
      I1 => slv_reg3(22),
      I2 => slv_reg0(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(23),
      I1 => slv_reg3(23),
      I2 => slv_reg0(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(24),
      I1 => slv_reg3(24),
      I2 => slv_reg0(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(25),
      I1 => slv_reg3(25),
      I2 => slv_reg0(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(26),
      I1 => slv_reg3(26),
      I2 => slv_reg0(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(27),
      I1 => slv_reg3(27),
      I2 => slv_reg0(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(28),
      I1 => slv_reg3(28),
      I2 => slv_reg0(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(29),
      I1 => slv_reg3(29),
      I2 => slv_reg0(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(2),
      I1 => slv_reg3(2),
      I2 => slv_reg0(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(30),
      I1 => slv_reg3(30),
      I2 => slv_reg0(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => slv_reg3(31),
      I2 => slv_reg0(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(3),
      I1 => slv_reg3(3),
      I2 => slv_reg0(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(4),
      I1 => slv_reg3(4),
      I2 => slv_reg0(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(5),
      I1 => slv_reg3(5),
      I2 => slv_reg0(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(6),
      I1 => slv_reg3(6),
      I2 => slv_reg0(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(7),
      I1 => slv_reg3(7),
      I2 => slv_reg0(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(8),
      I1 => slv_reg3(8),
      I2 => slv_reg0(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^q\(9),
      I1 => slv_reg3(9),
      I2 => slv_reg0(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\fndFont[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088880000F000"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_36_n_0\,
      I1 => \fndFont[6]_INST_0_i_37_n_0\,
      I2 => \fndFont[6]_INST_0_i_38_n_0\,
      I3 => \fndFont[6]_INST_0_i_39_n_0\,
      I4 => i(1),
      I5 => i(0),
      O => \counter_reg[1]\
    );
\fndFont[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001100000011000F"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_36_n_0\,
      I1 => \fndFont[6]_INST_0_i_37_n_0\,
      I2 => \fndFont[6]_INST_0_i_38_n_0\,
      I3 => i(1),
      I4 => i(0),
      I5 => \fndFont[6]_INST_0_i_39_n_0\,
      O => \counter_reg[1]_0\
    );
\fndFont[6]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E145614D795D781"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_41_n_0\,
      I1 => \^q\(3),
      I2 => \U_fndController/o_digit_100\(2),
      I3 => \U_fndController/o_digit_100\(1),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \^slv_reg2_reg[3]_0\(0)
    );
\fndFont[6]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000F00440000"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_49_n_0\,
      I1 => \U_fndController/o_digit_100\(1),
      I2 => \^slv_reg2_reg[3]_0\(0),
      I3 => i(1),
      I4 => i(0),
      I5 => \^q\(1),
      O => \counter_reg[1]_1\
    );
\fndFont[6]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00220000002200F0"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_49_n_0\,
      I1 => \U_fndController/o_digit_100\(1),
      I2 => \^slv_reg2_reg[3]_0\(0),
      I3 => i(1),
      I4 => i(0),
      I5 => \^q\(1),
      O => \counter_reg[1]_2\
    );
\fndFont[6]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF3FD3F4FD33077"
    )
        port map (
      I0 => \U_fndController/o_digit_100\(1),
      I1 => \fndFont[6]_INST_0_i_50_n_0\,
      I2 => \U_fndController/o_digit_100\(3),
      I3 => \U_fndController/o_digit_100\(2),
      I4 => \fndFont[6]_INST_0_i_52_n_0\,
      I5 => \fndFont[6]_INST_0_i_53_n_0\,
      O => \fndFont[6]_INST_0_i_26_n_0\
    );
\fndFont[6]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F108508F0EF5EF70"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_53_n_0\,
      I1 => \fndFont[6]_INST_0_i_50_n_0\,
      I2 => \U_fndController/o_digit_100\(1),
      I3 => \fndFont[6]_INST_0_i_52_n_0\,
      I4 => \U_fndController/o_digit_100\(2),
      I5 => \U_fndController/o_digit_100\(3),
      O => \fndFont[6]_INST_0_i_27_n_0\
    );
\fndFont[6]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75A1A1F1F1FFFF75"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \U_fndController/o_digit_100\(1),
      I3 => \U_fndController/o_digit_100\(2),
      I4 => \^q\(3),
      I5 => \fndFont[6]_INST_0_i_41_n_0\,
      O => \fndFont[6]_INST_0_i_28_n_0\
    );
\fndFont[6]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D24B2DB4"
    )
        port map (
      I0 => \U_fndController/o_digit_100\(1),
      I1 => \^q\(1),
      I2 => \U_fndController/o_digit_100\(2),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \fndFont[6]_INST_0_i_29_n_0\
    );
\fndFont[6]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C22B8CB"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_53_n_0\,
      I1 => \fndFont[6]_INST_0_i_52_n_0\,
      I2 => \U_fndController/o_digit_100\(2),
      I3 => \U_fndController/o_digit_100\(3),
      I4 => \fndFont[6]_INST_0_i_50_n_0\,
      I5 => \U_fndController/o_digit_100\(1),
      O => \fndFont[6]_INST_0_i_36_n_0\
    );
\fndFont[6]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA65996659AA55"
    )
        port map (
      I0 => \U_fndController/o_digit_100\(1),
      I1 => \fndFont[6]_INST_0_i_50_n_0\,
      I2 => \U_fndController/o_digit_100\(3),
      I3 => \U_fndController/o_digit_100\(2),
      I4 => \fndFont[6]_INST_0_i_52_n_0\,
      I5 => \fndFont[6]_INST_0_i_53_n_0\,
      O => \fndFont[6]_INST_0_i_37_n_0\
    );
\fndFont[6]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF500CCEE5"
    )
        port map (
      I0 => \^q\(2),
      I1 => \U_fndController/o_digit_100\(1),
      I2 => \U_fndController/o_digit_100\(2),
      I3 => \^q\(3),
      I4 => \fndFont[6]_INST_0_i_41_n_0\,
      I5 => \^q\(1),
      O => \fndFont[6]_INST_0_i_38_n_0\
    );
\fndFont[6]_INST_0_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \U_fndController/o_digit_100\(1),
      O => \fndFont[6]_INST_0_i_39_n_0\
    );
\fndFont[6]_INST_0_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \U_fndController/o_digit_100\(3),
      O => \fndFont[6]_INST_0_i_41_n_0\
    );
\fndFont[6]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E145614D795D781"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_54_n_0\,
      I1 => \^q\(5),
      I2 => \U_fndController/o_digit_100\(4),
      I3 => \U_fndController/o_digit_100\(3),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \U_fndController/o_digit_100\(2)
    );
\fndFont[6]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DE739455D631841"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_56_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \U_fndController/o_digit_100\(3),
      I4 => \fndFont[6]_INST_0_i_57_n_0\,
      I5 => \^q\(2),
      O => \U_fndController/o_digit_100\(1)
    );
\fndFont[6]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DE739455D631841"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_50_n_0\,
      I1 => \U_fndController/o_digit_100\(3),
      I2 => \U_fndController/o_digit_100\(2),
      I3 => \fndFont[6]_INST_0_i_52_n_0\,
      I4 => \fndFont[6]_INST_0_i_53_n_0\,
      I5 => \U_fndController/o_digit_100\(1),
      O => \fndFont[6]_INST_0_i_49_n_0\
    );
\fndFont[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088880000F000"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_26_n_0\,
      I1 => \fndFont[6]_INST_0_i_27_n_0\,
      I2 => \fndFont[6]_INST_0_i_28_n_0\,
      I3 => \fndFont[6]_INST_0_i_29_n_0\,
      I4 => i(1),
      I5 => i(0),
      O => \counter_reg[1]_3\
    );
\fndFont[6]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA65996659AA55"
    )
        port map (
      I0 => \U_fndController/o_digit_100\(3),
      I1 => \fndFont[6]_INST_0_i_60_n_0\,
      I2 => \U_fndController/o_digit_100\(5),
      I3 => \U_fndController/o_digit_100\(4),
      I4 => \fndFont[6]_INST_0_i_62_n_0\,
      I5 => \fndFont[6]_INST_0_i_63_n_0\,
      O => \fndFont[6]_INST_0_i_50_n_0\
    );
\fndFont[6]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DE739455D631841"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_64_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \U_fndController/o_digit_100\(5),
      I4 => \fndFont[6]_INST_0_i_65_n_0\,
      I5 => \^q\(4),
      O => \U_fndController/o_digit_100\(3)
    );
\fndFont[6]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DE739455D631841"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_60_n_0\,
      I1 => \U_fndController/o_digit_100\(5),
      I2 => \U_fndController/o_digit_100\(4),
      I3 => \fndFont[6]_INST_0_i_62_n_0\,
      I4 => \fndFont[6]_INST_0_i_63_n_0\,
      I5 => \U_fndController/o_digit_100\(3),
      O => \fndFont[6]_INST_0_i_52_n_0\
    );
\fndFont[6]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F108508F0EF5EF70"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_63_n_0\,
      I1 => \fndFont[6]_INST_0_i_60_n_0\,
      I2 => \U_fndController/o_digit_100\(3),
      I3 => \fndFont[6]_INST_0_i_62_n_0\,
      I4 => \U_fndController/o_digit_100\(4),
      I5 => \U_fndController/o_digit_100\(5),
      O => \fndFont[6]_INST_0_i_53_n_0\
    );
\fndFont[6]_INST_0_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \U_fndController/o_digit_100\(5),
      O => \fndFont[6]_INST_0_i_54_n_0\
    );
\fndFont[6]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E145614D795D781"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_66_n_0\,
      I1 => \^q\(7),
      I2 => \U_fndController/o_digit_100\(6),
      I3 => \U_fndController/o_digit_100\(5),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \U_fndController/o_digit_100\(4)
    );
\fndFont[6]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA65996659AA55"
    )
        port map (
      I0 => \^q\(4),
      I1 => \fndFont[6]_INST_0_i_64_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \U_fndController/o_digit_100\(5),
      I5 => \fndFont[6]_INST_0_i_65_n_0\,
      O => \fndFont[6]_INST_0_i_56_n_0\
    );
\fndFont[6]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1080EF5508FEF70"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_65_n_0\,
      I1 => \fndFont[6]_INST_0_i_64_n_0\,
      I2 => \^q\(4),
      I3 => \U_fndController/o_digit_100\(5),
      I4 => \^q\(6),
      I5 => \^q\(5),
      O => \fndFont[6]_INST_0_i_57_n_0\
    );
\fndFont[6]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9569966969569569"
    )
        port map (
      I0 => \U_fndController/o_digit_100\(5),
      I1 => \U_fndController/o_digit_100\(6),
      I2 => \U_fndController/o_digit_100\(10),
      I3 => \U_fndController/o_digit_100\(8),
      I4 => \U_fndController/o_digit_100\(9),
      I5 => \U_fndController/o_digit_100\(7),
      O => \fndFont[6]_INST_0_i_60_n_0\
    );
\fndFont[6]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DE739455D631841"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_72_n_0\,
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \U_fndController/o_digit_100\(7),
      I4 => \fndFont[6]_INST_0_i_73_n_0\,
      I5 => \^q\(6),
      O => \U_fndController/o_digit_100\(5)
    );
\fndFont[6]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18EFF718108EE710"
    )
        port map (
      I0 => \U_fndController/o_digit_100\(6),
      I1 => \U_fndController/o_digit_100\(10),
      I2 => \U_fndController/o_digit_100\(8),
      I3 => \U_fndController/o_digit_100\(9),
      I4 => \U_fndController/o_digit_100\(7),
      I5 => \U_fndController/o_digit_100\(5),
      O => \fndFont[6]_INST_0_i_62_n_0\
    );
\fndFont[6]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7188AE7AE7118AE"
    )
        port map (
      I0 => \U_fndController/o_digit_100\(5),
      I1 => \U_fndController/o_digit_100\(10),
      I2 => \U_fndController/o_digit_100\(8),
      I3 => \U_fndController/o_digit_100\(9),
      I4 => \U_fndController/o_digit_100\(7),
      I5 => \U_fndController/o_digit_100\(6),
      O => \fndFont[6]_INST_0_i_63_n_0\
    );
\fndFont[6]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA65996659AA55"
    )
        port map (
      I0 => \^q\(6),
      I1 => \fndFont[6]_INST_0_i_72_n_0\,
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \U_fndController/o_digit_100\(7),
      I5 => \fndFont[6]_INST_0_i_73_n_0\,
      O => \fndFont[6]_INST_0_i_64_n_0\
    );
\fndFont[6]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1080EF5508FEF70"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_73_n_0\,
      I1 => \fndFont[6]_INST_0_i_72_n_0\,
      I2 => \^q\(6),
      I3 => \U_fndController/o_digit_100\(7),
      I4 => \^q\(8),
      I5 => \^q\(7),
      O => \fndFont[6]_INST_0_i_65_n_0\
    );
\fndFont[6]_INST_0_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => \U_fndController/o_digit_100\(7),
      O => \fndFont[6]_INST_0_i_66_n_0\
    );
\fndFont[6]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88EEEAA8EAA888EE"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_73_n_0\,
      I1 => \U_fndController/o_digit_100\(7),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \U_fndController/o_digit_100\(8),
      I5 => \^q\(9),
      O => \U_fndController/o_digit_100\(6)
    );
\fndFont[6]_INST_0_i_68\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(11),
      I2 => \^q\(13),
      O => \U_fndController/o_digit_100\(10)
    );
\fndFont[6]_INST_0_i_69\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FB44B24"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(12),
      I2 => \^q\(11),
      I3 => \^q\(13),
      I4 => \^q\(9),
      O => \U_fndController/o_digit_100\(8)
    );
\fndFont[6]_INST_0_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D242"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(11),
      I2 => \^q\(12),
      I3 => \^q\(10),
      O => \U_fndController/o_digit_100\(9)
    );
\fndFont[6]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18EFF718108EE710"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(13),
      I2 => \^q\(11),
      I3 => \^q\(12),
      I4 => \^q\(10),
      I5 => \^q\(8),
      O => \U_fndController/o_digit_100\(7)
    );
\fndFont[6]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9569966969569569"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(13),
      I3 => \^q\(11),
      I4 => \^q\(12),
      I5 => \^q\(10),
      O => \fndFont[6]_INST_0_i_72_n_0\
    );
\fndFont[6]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7188AE7AE7118AE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(13),
      I2 => \^q\(11),
      I3 => \^q\(12),
      I4 => \^q\(10),
      I5 => \^q\(9),
      O => \fndFont[6]_INST_0_i_73_n_0\
    );
\fndFont[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001100000011000F"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_26_n_0\,
      I1 => \fndFont[6]_INST_0_i_27_n_0\,
      I2 => \fndFont[6]_INST_0_i_28_n_0\,
      I3 => i(1),
      I4 => i(0),
      I5 => \fndFont[6]_INST_0_i_29_n_0\,
      O => \counter_reg[1]_4\
    );
\i___1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(7),
      I3 => \^q\(5),
      O => \^slv_reg2_reg[2]_0\(1)
    );
\i___1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^q\(1),
      O => \^slv_reg2_reg[2]_0\(0)
    );
\i___1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"65A6"
    )
        port map (
      I0 => \^slv_reg2_reg[2]_0\(1),
      I1 => \^q\(1),
      I2 => \^q\(6),
      I3 => \^q\(4),
      O => \slv_reg2_reg[1]_1\(3)
    );
\i___1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(0),
      O => \slv_reg2_reg[1]_1\(2)
    );
\i___1_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(5),
      I2 => \^q\(3),
      O => \slv_reg2_reg[1]_1\(1)
    );
\i___1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      O => \slv_reg2_reg[1]_1\(0)
    );
\i___1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8E8E00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => \i___1_carry__1_i_9_n_0\,
      O => \^slv_reg2_reg[4]_0\(3)
    );
\i___1_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(9),
      I2 => \^q\(2),
      O => \i___1_carry__1_i_10_n_0\
    );
\i___1_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(8),
      I2 => \^q\(1),
      O => \i___1_carry__1_i_11_n_0\
    );
\i___1_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(3),
      I2 => \^q\(5),
      O => \i___1_carry__1_i_12_n_0\
    );
\i___1_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \i___1_carry__1_i_13_n_0\
    );
\i___1_carry__1_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => \i___1_carry__1_i_14_n_0\
    );
\i___1_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8E8E00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \i___1_carry__1_i_10_n_0\,
      O => \^slv_reg2_reg[4]_0\(2)
    );
\i___1_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB2B200"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \^q\(6),
      I4 => \i___1_carry__1_i_11_n_0\,
      O => \^slv_reg2_reg[4]_0\(1)
    );
\i___1_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B24D4DB2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(7),
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \i___1_carry__1_i_11_n_0\,
      O => \^slv_reg2_reg[4]_0\(0)
    );
\i___1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \^slv_reg2_reg[4]_0\(3),
      I1 => \i___1_carry__1_i_12_n_0\,
      I2 => \^q\(11),
      I3 => \^q\(6),
      I4 => \^q\(4),
      I5 => \^q\(9),
      O => \slv_reg2_reg[11]_1\(3)
    );
\i___1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \^slv_reg2_reg[4]_0\(2),
      I1 => \i___1_carry__1_i_13_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(10),
      I5 => \^q\(8),
      O => \slv_reg2_reg[11]_1\(2)
    );
\i___1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \^slv_reg2_reg[4]_0\(1),
      I1 => \i___1_carry__1_i_14_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(9),
      I4 => \^q\(4),
      I5 => \^q\(7),
      O => \slv_reg2_reg[11]_1\(1)
    );
\i___1_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969969996996696"
    )
        port map (
      I0 => \i___1_carry__1_i_11_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \slv_reg2_reg[11]_1\(0)
    );
\i___1_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(3),
      I2 => \^q\(5),
      O => \i___1_carry__1_i_9_n_0\
    );
\i___1_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8E8E008E00FF8E"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(13),
      I3 => \^q\(12),
      I4 => \^q\(7),
      I5 => \^q\(9),
      O => \^slv_reg2_reg[8]_0\(3)
    );
\i___1_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(5),
      I2 => \^q\(7),
      O => \i___1_carry__2_i_10_n_0\
    );
\i___1_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^q\(11),
      O => \i___1_carry__2_i_11_n_0\
    );
\i___1_carry__2_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(6),
      I2 => \^q\(8),
      O => \i___1_carry__2_i_12_n_0\
    );
\i___1_carry__2_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(5),
      I2 => \^q\(7),
      O => \i___1_carry__2_i_13_n_0\
    );
\i___1_carry__2_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(4),
      I2 => \^q\(6),
      O => \i___1_carry__2_i_14_n_0\
    );
\i___1_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8E8E00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(12),
      I3 => \^q\(11),
      I4 => \i___1_carry__2_i_9_n_0\,
      O => \^slv_reg2_reg[8]_0\(2)
    );
\i___1_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8E8E00"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(11),
      I3 => \^q\(10),
      I4 => \i___1_carry__2_i_10_n_0\,
      O => \^slv_reg2_reg[8]_0\(1)
    );
\i___1_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8E8E00"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(10),
      I3 => \^q\(9),
      I4 => \i___1_carry__2_i_11_n_0\,
      O => \^slv_reg2_reg[8]_0\(0)
    );
\i___1_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A9A956A95656A9"
    )
        port map (
      I0 => \^slv_reg2_reg[8]_0\(3),
      I1 => \^q\(9),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(13),
      O => \slv_reg2_reg[9]_1\(3)
    );
\i___1_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \^slv_reg2_reg[8]_0\(2),
      I1 => \i___1_carry__2_i_12_n_0\,
      I2 => \^q\(9),
      I3 => \^q\(7),
      I4 => \^q\(12),
      O => \slv_reg2_reg[9]_1\(2)
    );
\i___1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \^slv_reg2_reg[8]_0\(1),
      I1 => \i___1_carry__2_i_13_n_0\,
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => \^q\(13),
      I5 => \^q\(11),
      O => \slv_reg2_reg[9]_1\(1)
    );
\i___1_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \^slv_reg2_reg[8]_0\(0),
      I1 => \i___1_carry__2_i_14_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => \^q\(12),
      I5 => \^q\(10),
      O => \slv_reg2_reg[9]_1\(0)
    );
\i___1_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(6),
      I2 => \^q\(8),
      O => \i___1_carry__2_i_9_n_0\
    );
\i___1_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(12),
      I2 => \^q\(11),
      I3 => \^q\(13),
      O => DI(3)
    );
\i___1_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(9),
      I2 => \^q\(10),
      I3 => \^q\(12),
      O => DI(2)
    );
\i___1_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(8),
      I2 => \^q\(11),
      I3 => \^q\(9),
      O => DI(1)
    );
\i___1_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEE0E0FE"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(9),
      I2 => \^q\(13),
      I3 => \^q\(10),
      I4 => \^q\(8),
      O => DI(0)
    );
\i___1_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38F1"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(13),
      I2 => \^q\(12),
      I3 => \^q\(11),
      O => \slv_reg2_reg[10]_2\(3)
    );
\i___1_carry__3_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C63C3C39"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(13),
      I2 => \^q\(11),
      I3 => \^q\(10),
      I4 => \^q\(12),
      O => \slv_reg2_reg[10]_2\(2)
    );
\i___1_carry__3_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C63C3C39"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(12),
      I2 => \^q\(10),
      I3 => \^q\(9),
      I4 => \^q\(11),
      O => \slv_reg2_reg[10]_2\(1)
    );
\i___1_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F10EA758A7580EF1"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(7),
      I2 => \^q\(9),
      I3 => \^q\(11),
      I4 => \^q\(8),
      I5 => \^q\(10),
      O => \slv_reg2_reg[10]_2\(0)
    );
\i___1_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(11),
      I2 => \^q\(13),
      O => \slv_reg2_reg[12]_1\(0)
    );
\i___1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => \slv_reg2_reg[13]_0\(1)
    );
\i___1_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(12),
      I2 => \^q\(13),
      O => \slv_reg2_reg[13]_0\(0)
    );
\i___1_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      O => \slv_reg2_reg[1]_0\(2)
    );
\i___1_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      O => \slv_reg2_reg[1]_0\(1)
    );
\i___1_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \slv_reg2_reg[1]_0\(0)
    );
\i___75_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \o_digit_1000_inferred__0/i___75_carry__0\(3),
      I2 => \o_digit_1000_inferred__0/i___75_carry__1\(0),
      I3 => \^q\(9),
      O => \slv_reg2_reg[8]_1\(3)
    );
\i___75_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \o_digit_1000_inferred__0/i___75_carry__0\(2),
      I2 => \o_digit_1000_inferred__0/i___75_carry__0\(3),
      I3 => \^q\(8),
      O => \slv_reg2_reg[8]_1\(2)
    );
\i___75_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \o_digit_1000_inferred__0/i___75_carry__0\(1),
      I2 => \o_digit_1000_inferred__0/i___75_carry__0\(2),
      I3 => \^q\(7),
      O => \slv_reg2_reg[8]_1\(1)
    );
\i___75_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(5),
      I1 => \o_digit_1000_inferred__0/i___75_carry__0\(0),
      I2 => \o_digit_1000_inferred__0/i___75_carry__0\(1),
      I3 => \^q\(6),
      O => \slv_reg2_reg[8]_1\(0)
    );
\i___75_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(12),
      I1 => \o_digit_1000_inferred__0/i___75_carry__1\(3),
      I2 => \o_digit_1000_inferred__0/i___75_carry__1_0\(0),
      I3 => \^q\(13),
      O => \slv_reg2_reg[12]_4\(3)
    );
\i___75_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(11),
      I1 => \o_digit_1000_inferred__0/i___75_carry__1\(2),
      I2 => \o_digit_1000_inferred__0/i___75_carry__1\(3),
      I3 => \^q\(12),
      O => \slv_reg2_reg[12]_4\(2)
    );
\i___75_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \o_digit_1000_inferred__0/i___75_carry__1\(1),
      I2 => \o_digit_1000_inferred__0/i___75_carry__1\(2),
      I3 => \^q\(11),
      O => \slv_reg2_reg[12]_4\(1)
    );
\i___75_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(9),
      I1 => \o_digit_1000_inferred__0/i___75_carry__1\(0),
      I2 => \o_digit_1000_inferred__0/i___75_carry__1\(1),
      I3 => \^q\(10),
      O => \slv_reg2_reg[12]_4\(0)
    );
\i___75_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(4),
      I1 => \o_digit_1000_inferred__0/i___75_carry_0\(0),
      I2 => \o_digit_1000_inferred__0/i___75_carry__0\(0),
      I3 => \^q\(5),
      O => \slv_reg2_reg[4]_1\(3)
    );
\i___75_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \o_digit_1000_inferred__0/i___75_carry\(1),
      I2 => \o_digit_1000_inferred__0/i___75_carry_0\(0),
      I3 => \^q\(4),
      O => \slv_reg2_reg[4]_1\(2)
    );
\i___75_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \o_digit_1000_inferred__0/i___75_carry\(0),
      I2 => \o_digit_1000_inferred__0/i___75_carry\(1),
      I3 => \^q\(3),
      O => \slv_reg2_reg[4]_1\(1)
    );
\i___75_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \o_digit_1000_inferred__0/i___75_carry\(0),
      O => \slv_reg2_reg[4]_1\(0)
    );
\o_digit_10000__17_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(13),
      I1 => O(1),
      O => \slv_reg2_reg[13]_3\(0)
    );
\o_digit_10000__17_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(13),
      I1 => O(1),
      O => S(2)
    );
\o_digit_10000__17_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BFFB400"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(10),
      I2 => \^q\(11),
      I3 => \^q\(13),
      I4 => O(0),
      O => S(1)
    );
\o_digit_10000__17_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(11),
      I2 => \^q\(10),
      I3 => \^q\(12),
      O => S(0)
    );
\o_digit_10000__17_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(13),
      I1 => \o_digit_10000__17_carry__1\(1),
      O => \slv_reg2_reg[13]_2\(2)
    );
\o_digit_10000__17_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(13),
      I1 => \o_digit_10000__17_carry__1\(0),
      O => \slv_reg2_reg[13]_2\(1)
    );
\o_digit_10000__17_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(13),
      I1 => O(2),
      O => \slv_reg2_reg[13]_2\(0)
    );
\o_digit_10000__17_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(13),
      I1 => CO(0),
      O => \slv_reg2_reg[13]_1\(0)
    );
\o_digit_10000__17_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(10),
      O => \slv_reg2_reg[12]_0\(0)
    );
\o_digit_10000__17_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(10),
      O => \slv_reg2_reg[12]_2\(0)
    );
\o_digit_10000__45_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \o_digit_10000__45_carry__0\(3),
      I2 => \o_digit_10000__45_carry__1\(0),
      I3 => \^q\(10),
      O => \slv_reg2_reg[9]_0\(3)
    );
\o_digit_10000__45_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(8),
      I1 => \o_digit_10000__45_carry__0\(2),
      I2 => \o_digit_10000__45_carry__0\(3),
      I3 => \^q\(9),
      O => \slv_reg2_reg[9]_0\(2)
    );
\o_digit_10000__45_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(7),
      I1 => \o_digit_10000__45_carry__0\(1),
      I2 => \o_digit_10000__45_carry__0\(2),
      I3 => \^q\(8),
      O => \slv_reg2_reg[9]_0\(1)
    );
\o_digit_10000__45_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(6),
      I1 => \o_digit_10000__45_carry__0\(0),
      I2 => \o_digit_10000__45_carry__0\(1),
      I3 => \^q\(7),
      O => \slv_reg2_reg[9]_0\(0)
    );
\o_digit_10000__45_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(12),
      I1 => \o_digit_10000__45_carry__1\(2),
      I2 => \o_digit_10000__45_carry__1\(3),
      I3 => \^q\(13),
      O => \slv_reg2_reg[12]_3\(2)
    );
\o_digit_10000__45_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(11),
      I1 => \o_digit_10000__45_carry__1\(1),
      I2 => \o_digit_10000__45_carry__1\(2),
      I3 => \^q\(12),
      O => \slv_reg2_reg[12]_3\(1)
    );
\o_digit_10000__45_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \o_digit_10000__45_carry__1\(0),
      I2 => \o_digit_10000__45_carry__1\(1),
      I3 => \^q\(11),
      O => \slv_reg2_reg[12]_3\(0)
    );
\o_digit_10000__45_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(5),
      I1 => \o_digit_10000__45_carry\(2),
      I2 => \o_digit_10000__45_carry__0\(0),
      I3 => \^q\(6),
      O => \slv_reg2_reg[5]_0\(3)
    );
\o_digit_10000__45_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(4),
      I1 => \o_digit_10000__45_carry\(1),
      I2 => \o_digit_10000__45_carry\(2),
      I3 => \^q\(5),
      O => \slv_reg2_reg[5]_0\(2)
    );
\o_digit_10000__45_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \o_digit_10000__45_carry\(0),
      I2 => \o_digit_10000__45_carry\(1),
      I3 => \^q\(4),
      O => \slv_reg2_reg[5]_0\(1)
    );
\o_digit_10000__45_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \o_digit_10000__45_carry\(0),
      O => \slv_reg2_reg[5]_0\(0)
    );
\o_digit_10000_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(12),
      O => \slv_reg2_reg[11]_0\(1)
    );
\o_digit_10000_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^slv_reg2_reg[10]_0\(2),
      I1 => \^q\(11),
      I2 => \^q\(12),
      O => \slv_reg2_reg[11]_0\(0)
    );
o_digit_10000_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(12),
      I2 => \^q\(11),
      O => \^slv_reg2_reg[10]_0\(2)
    );
o_digit_10000_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \^slv_reg2_reg[10]_0\(1)
    );
o_digit_10000_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      O => \^slv_reg2_reg[10]_0\(0)
    );
o_digit_10000_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(12),
      I2 => \^q\(11),
      I3 => \^slv_reg2_reg[10]_0\(2),
      O => \slv_reg2_reg[10]_1\(3)
    );
o_digit_10000_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^slv_reg2_reg[10]_0\(2),
      I1 => \^q\(11),
      I2 => \^q\(12),
      I3 => \^q\(10),
      O => \slv_reg2_reg[10]_1\(2)
    );
o_digit_10000_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^slv_reg2_reg[10]_0\(1),
      I1 => \^q\(11),
      I2 => \^q\(12),
      I3 => \^q\(10),
      O => \slv_reg2_reg[10]_1\(1)
    );
o_digit_10000_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      I2 => \^q\(12),
      O => \slv_reg2_reg[10]_1\(0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => p_1_in(13)
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => p_1_in(23)
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => p_1_in(31)
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => p_1_in(7)
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(13),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkDiv is
  port (
    r_tick : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkDiv;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkDiv is
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal counter_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal r_tick_0 : STD_LOGIC;
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[16]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of r_tick_i_1 : label is "soft_lutpair12";
begin
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_1(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(10),
      O => counter_1(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(11),
      O => counter_1(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(12),
      O => counter_1(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(13),
      O => counter_1(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(14),
      O => counter_1(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(15),
      O => counter_1(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(16),
      O => counter_1(16)
    );
\counter[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(6),
      I3 => counter(5),
      I4 => \counter[16]_i_3_n_0\,
      I5 => \counter[16]_i_4_n_0\,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter(0),
      I1 => counter(15),
      I2 => counter(16),
      I3 => counter(2),
      I4 => counter(1),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => counter(9),
      I1 => counter(10),
      I2 => counter(8),
      I3 => counter(7),
      I4 => \counter[16]_i_5_n_0\,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(12),
      I1 => counter(11),
      I2 => counter(14),
      I3 => counter(13),
      O => \counter[16]_i_5_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(1),
      O => counter_1(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(2),
      O => counter_1(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(3),
      O => counter_1(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(4),
      O => counter_1(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(5),
      O => counter_1(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(6),
      O => counter_1(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(7),
      O => counter_1(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(8),
      O => counter_1(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => data0(9),
      O => counter_1(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(0),
      Q => counter(0),
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(10),
      Q => counter(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(11),
      Q => counter(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(12),
      Q => counter(12),
      R => '0'
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(13),
      Q => counter(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(14),
      Q => counter(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(15),
      Q => counter(15),
      R => '0'
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(16),
      Q => counter(16),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(1),
      Q => counter(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(2),
      Q => counter(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(3),
      Q => counter(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(4),
      Q => counter(4),
      R => '0'
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(5),
      Q => counter(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(6),
      Q => counter(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(7),
      Q => counter(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(8),
      Q => counter(8),
      R => '0'
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_1(9),
      Q => counter(9),
      R => '0'
    );
r_tick_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      O => r_tick_0
    );
r_tick_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_tick_0,
      Q => r_tick,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  port (
    fndFont : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \counter_reg[1]_0\ : out STD_LOGIC;
    \counter_reg[0]_0\ : out STD_LOGIC;
    \counter_reg[0]_1\ : out STD_LOGIC;
    fndCom : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_reg[1]_1\ : out STD_LOGIC;
    \fndFont[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fndFont_6_sp_1 : in STD_LOGIC;
    \fndFont[6]_0\ : in STD_LOGIC;
    \fndFont[6]_1\ : in STD_LOGIC;
    \fndFont[6]_2\ : in STD_LOGIC;
    \fndFont[6]_3\ : in STD_LOGIC;
    \fndFont[6]_4\ : in STD_LOGIC;
    \fndFont[6]_5\ : in STD_LOGIC;
    \fndFont[6]_6\ : in STD_LOGIC;
    \fndFont[6]_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fndFont[6]_8\ : in STD_LOGIC;
    \fndFont[6]_9\ : in STD_LOGIC;
    \fndFont[6]_INST_0_i_4_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \fndFont[6]_INST_0_i_3_0\ : in STD_LOGIC;
    r_tick : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \^counter_reg[0]_0\ : STD_LOGIC;
  signal \^counter_reg[1]_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal fndFont_6_sn_1 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fndCom[0]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \fndCom[1]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \fndCom[2]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \fndCom[3]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fndFont[0]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \fndFont[1]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \fndFont[2]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fndFont[3]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \fndFont[4]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \fndFont[5]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_16\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_21\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_31\ : label is "soft_lutpair25";
begin
  \counter_reg[0]_0\ <= \^counter_reg[0]_0\;
  \counter_reg[1]_0\ <= \^counter_reg[1]_0\;
  fndFont_6_sn_1 <= fndFont_6_sp_1;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      I1 => \^counter_reg[1]_0\,
      O => \counter[1]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => r_tick,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => \^counter_reg[0]_0\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => r_tick,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => \^counter_reg[1]_0\,
      R => '0'
    );
\fndCom[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_reg[1]_0\,
      I1 => \^counter_reg[0]_0\,
      O => fndCom(0)
    );
\fndCom[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^counter_reg[1]_0\,
      I1 => \^counter_reg[0]_0\,
      O => fndCom(1)
    );
\fndCom[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      I1 => \^counter_reg[1]_0\,
      O => fndCom(2)
    );
\fndCom[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^counter_reg[1]_0\,
      I1 => \^counter_reg[0]_0\,
      O => fndCom(3)
    );
\fndFont[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4184"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => \fndFont[0]\(0),
      I3 => sel0(2),
      O => fndFont(0)
    );
\fndFont[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \fndFont[0]\(0),
      O => fndFont(1)
    );
\fndFont[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80C2"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => \fndFont[0]\(0),
      I3 => sel0(0),
      O => fndFont(2)
    );
\fndFont[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C124"
    )
        port map (
      I0 => \fndFont[0]\(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => fndFont(3)
    );
\fndFont[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02BA"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \fndFont[0]\(0),
      O => fndFont(4)
    );
\fndFont[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"480E"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => \fndFont[0]\(0),
      I3 => sel0(2),
      O => fndFont(5)
    );
\fndFont[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4019"
    )
        port map (
      I0 => \fndFont[0]\(0),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => fndFont(6)
    );
\fndFont[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8808800800000000"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      I1 => \^counter_reg[1]_0\,
      I2 => \fndFont[6]_INST_0_i_4_0\,
      I3 => Q(2),
      I4 => Q(4),
      I5 => Q(3),
      O => \fndFont[6]_INST_0_i_11_n_0\
    );
\fndFont[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000800"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      I1 => \^counter_reg[1]_0\,
      I2 => \fndFont[6]_INST_0_i_4_0\,
      I3 => Q(2),
      I4 => Q(4),
      I5 => Q(3),
      O => \fndFont[6]_INST_0_i_14_n_0\
    );
\fndFont[6]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C30000AA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \fndFont[6]_INST_0_i_3_0\,
      I3 => \^counter_reg[1]_0\,
      I4 => \^counter_reg[0]_0\,
      O => \fndFont[6]_INST_0_i_16_n_0\
    );
\fndFont[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => fndFont_6_sn_1,
      I1 => \fndFont[6]_INST_0_i_11_n_0\,
      I2 => \fndFont[6]_0\,
      I3 => \fndFont[6]_1\,
      I4 => \fndFont[6]_INST_0_i_14_n_0\,
      I5 => \fndFont[6]_2\,
      O => sel0(2)
    );
\fndFont[6]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008008"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      I1 => \^counter_reg[1]_0\,
      I2 => \fndFont[6]_INST_0_i_4_0\,
      I3 => Q(2),
      I4 => Q(4),
      O => \fndFont[6]_INST_0_i_21_n_0\
    );
\fndFont[6]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880080000000000"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      I1 => \^counter_reg[1]_0\,
      I2 => \fndFont[6]_INST_0_i_4_0\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \fndFont[6]_INST_0_i_24_n_0\
    );
\fndFont[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABEAEBEAEBAAA"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_16_n_0\,
      I1 => \^counter_reg[1]_0\,
      I2 => \^counter_reg[0]_0\,
      I3 => \fndFont[6]_7\(0),
      I4 => \fndFont[6]_8\,
      I5 => \fndFont[6]_9\,
      O => sel0(0)
    );
\fndFont[6]_INST_0_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg[1]_0\,
      I1 => \^counter_reg[0]_0\,
      O => \counter_reg[1]_1\
    );
\fndFont[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fndFont[6]_3\,
      I1 => \fndFont[6]_INST_0_i_21_n_0\,
      I2 => \fndFont[6]_4\,
      I3 => \fndFont[6]_5\,
      I4 => \fndFont[6]_INST_0_i_24_n_0\,
      I5 => \fndFont[6]_6\,
      O => sel0(1)
    );
\fndFont[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000800000"
    )
        port map (
      I0 => \^counter_reg[0]_0\,
      I1 => \^counter_reg[1]_0\,
      I2 => \fndFont[6]_INST_0_i_4_0\,
      I3 => Q(2),
      I4 => Q(4),
      I5 => Q(3),
      O => \counter_reg[0]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digitSplitter is
  port (
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[12]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[11]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[13]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[8]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i___50_carry_i_7_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___50_carry__0_i_8_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___50_carry__1_i_1_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[1]\ : out STD_LOGIC;
    \slv_reg2_reg[13]_0\ : out STD_LOGIC;
    \counter_reg[1]_0\ : out STD_LOGIC;
    \counter_reg[1]_1\ : out STD_LOGIC;
    \counter_reg[1]_2\ : out STD_LOGIC;
    \slv_reg2_reg[13]_1\ : out STD_LOGIC;
    \slv_reg2_reg[13]_2\ : out STD_LOGIC;
    \slv_reg2_reg[13]_3\ : out STD_LOGIC;
    \counter_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__17_carry__0_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_10000__17_carry__0_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \o_digit_10000__17_carry__1_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_10000__45_carry_i_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__45_carry_i_6_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__45_carry__0_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_10000__45_carry__1_i_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_10000__45_carry__1_i_6_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__45_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_10000__45_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \fndFont[6]_INST_0_i_30_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___75_carry_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___75_carry_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___75_carry_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___50_carry_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i___50_carry_i_4_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \fndFont[6]_INST_0_i_19_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \fndFont[6]_INST_0_i_1_0\ : in STD_LOGIC;
    \fndFont[0]\ : in STD_LOGIC;
    \fndFont[0]_0\ : in STD_LOGIC;
    \fndFont[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digitSplitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digitSplitter is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \fndFont[6]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \fndFont[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \i___50_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___50_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___50_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___50_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___50_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___50_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___50_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \^i___50_carry__0_i_8_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i___50_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \^i___50_carry__1_i_1_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i___50_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___50_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___50_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___50_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___50_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___50_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___50_carry_i_6_n_0\ : STD_LOGIC;
  signal \^i___50_carry_i_7_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i___50_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___75_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___75_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___75_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___75_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___75_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___75_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___75_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___75_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___75_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___75_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___75_carry_i_3_n_0\ : STD_LOGIC;
  signal o_digit_1000 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \o_digit_10000__17_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__0_n_0\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__0_n_1\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__0_n_2\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__0_n_3\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__1_n_1\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__1_n_2\ : STD_LOGIC;
  signal \o_digit_10000__17_carry__1_n_3\ : STD_LOGIC;
  signal \o_digit_10000__17_carry_n_0\ : STD_LOGIC;
  signal \o_digit_10000__17_carry_n_1\ : STD_LOGIC;
  signal \o_digit_10000__17_carry_n_2\ : STD_LOGIC;
  signal \o_digit_10000__17_carry_n_3\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_n_1\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_n_2\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__0_n_3\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__1_n_1\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__1_n_2\ : STD_LOGIC;
  signal \o_digit_10000__45_carry__1_n_3\ : STD_LOGIC;
  signal \o_digit_10000__45_carry_i_1_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry_i_2_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry_i_3_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry_n_0\ : STD_LOGIC;
  signal \o_digit_10000__45_carry_n_1\ : STD_LOGIC;
  signal \o_digit_10000__45_carry_n_2\ : STD_LOGIC;
  signal \o_digit_10000__45_carry_n_3\ : STD_LOGIC;
  signal \o_digit_10000_carry__0_n_3\ : STD_LOGIC;
  signal o_digit_10000_carry_n_0 : STD_LOGIC;
  signal o_digit_10000_carry_n_1 : STD_LOGIC;
  signal o_digit_10000_carry_n_2 : STD_LOGIC;
  signal o_digit_10000_carry_n_3 : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__0_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__0_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__0_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__0_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__1_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__1_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__1_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__1_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__2_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__2_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__2_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__2_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__3_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__3_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__3_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__3_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__3_n_4\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__3_n_5\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__3_n_6\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__4_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__4_n_6\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry__4_n_7\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___1_carry_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry__0_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry__0_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry__0_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry__0_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___50_carry_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__0_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__0_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__0_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__0_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__1_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__1_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__1_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry__1_n_3\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry_n_0\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry_n_1\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry_n_2\ : STD_LOGIC;
  signal \o_digit_1000_inferred__0/i___75_carry_n_3\ : STD_LOGIC;
  signal \^slv_reg2_reg[10]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[11]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^slv_reg2_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^slv_reg2_reg[12]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^slv_reg2_reg[13]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^slv_reg2_reg[13]_0\ : STD_LOGIC;
  signal \^slv_reg2_reg[8]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_o_digit_10000__17_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_o_digit_10000__17_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_digit_10000__45_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_10000__45_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_10000__45_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_digit_10000__45_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_o_digit_10000_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_o_digit_10000_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_digit_10000_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_digit_1000_inferred__0/i___1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_1000_inferred__0/i___1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_1000_inferred__0/i___1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_1000_inferred__0/i___1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_o_digit_1000_inferred__0/i___1_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_digit_1000_inferred__0/i___1_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_digit_1000_inferred__0/i___50_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_1000_inferred__0/i___50_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_digit_1000_inferred__0/i___75_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_1000_inferred__0/i___75_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_digit_1000_inferred__0/i___75_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_19\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_30\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_40\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \fndFont[6]_INST_0_i_58\ : label is "soft_lutpair27";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \o_digit_10000__17_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_10000__17_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_10000__17_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_10000__45_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_10000__45_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_10000__45_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___1_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___50_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___50_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___50_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___75_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___75_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \o_digit_1000_inferred__0/i___75_carry__1\ : label is 35;
begin
  CO(0) <= \^co\(0);
  O(2 downto 0) <= \^o\(2 downto 0);
  \i___50_carry__0_i_8_0\(3 downto 0) <= \^i___50_carry__0_i_8_0\(3 downto 0);
  \i___50_carry__1_i_1_0\(0) <= \^i___50_carry__1_i_1_0\(0);
  \i___50_carry_i_7_0\(3 downto 0) <= \^i___50_carry_i_7_0\(3 downto 0);
  \slv_reg2_reg[10]\(0) <= \^slv_reg2_reg[10]\(0);
  \slv_reg2_reg[11]\(2 downto 0) <= \^slv_reg2_reg[11]\(2 downto 0);
  \slv_reg2_reg[11]_0\(3 downto 0) <= \^slv_reg2_reg[11]_0\(3 downto 0);
  \slv_reg2_reg[12]\(1 downto 0) <= \^slv_reg2_reg[12]\(1 downto 0);
  \slv_reg2_reg[13]\(3 downto 0) <= \^slv_reg2_reg[13]\(3 downto 0);
  \slv_reg2_reg[13]_0\ <= \^slv_reg2_reg[13]_0\;
  \slv_reg2_reg[8]\(1 downto 0) <= \^slv_reg2_reg[8]\(1 downto 0);
\fndFont[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \fndFont[0]\,
      I1 => \fndFont[0]_0\,
      I2 => \fndFont[6]_INST_0_i_7_n_0\,
      I3 => \fndFont[0]_1\,
      I4 => \fndFont[6]_INST_0_i_9_n_0\,
      O => \counter_reg[1]_3\(0)
    );
\fndFont[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2088882020888800"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_1_0\,
      I1 => o_digit_1000(1),
      I2 => \fndFont[6]_INST_0_i_34_n_0\,
      I3 => \^slv_reg2_reg[13]_0\,
      I4 => o_digit_1000(2),
      I5 => \fndFont[6]_INST_0_i_35_n_0\,
      O => \counter_reg[1]\
    );
\fndFont[6]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000220200"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_1_0\,
      I1 => o_digit_1000(1),
      I2 => \fndFont[6]_INST_0_i_34_n_0\,
      I3 => \^slv_reg2_reg[13]_0\,
      I4 => o_digit_1000(2),
      I5 => \fndFont[6]_INST_0_i_35_n_0\,
      O => \counter_reg[1]_0\
    );
\fndFont[6]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18EFF718108EE710"
    )
        port map (
      I0 => o_digit_1000(3),
      I1 => o_digit_1000(7),
      I2 => o_digit_1000(5),
      I3 => o_digit_1000(6),
      I4 => o_digit_1000(4),
      I5 => o_digit_1000(2),
      O => \^slv_reg2_reg[13]_0\
    );
\fndFont[6]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"559AAA65"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(0),
      I1 => Q(13),
      I2 => \^i___50_carry__1_i_1_0\(0),
      I3 => \o_digit_1000_inferred__0/i___75_carry__1_n_0\,
      I4 => \^slv_reg2_reg[13]_0\,
      O => \slv_reg2_reg[13]_1\
    );
\fndFont[6]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000020002200AA00"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_1_0\,
      I1 => \fndFont[6]_INST_0_i_35_n_0\,
      I2 => o_digit_1000(2),
      I3 => o_digit_1000(1),
      I4 => \^slv_reg2_reg[13]_0\,
      I5 => \fndFont[6]_INST_0_i_34_n_0\,
      O => \counter_reg[1]_1\
    );
\fndFont[6]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA008800080000"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_1_0\,
      I1 => \fndFont[6]_INST_0_i_35_n_0\,
      I2 => o_digit_1000(2),
      I3 => o_digit_1000(1),
      I4 => \^slv_reg2_reg[13]_0\,
      I5 => \fndFont[6]_INST_0_i_34_n_0\,
      O => \counter_reg[1]_2\
    );
\fndFont[6]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => \o_digit_10000__45_carry__1_n_1\,
      I1 => \^slv_reg2_reg[13]\(3),
      I2 => Q(13),
      I3 => Q(10),
      O => \slv_reg2_reg[13]_2\
    );
\fndFont[6]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF75008A"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(0),
      I1 => Q(13),
      I2 => \^i___50_carry__1_i_1_0\(0),
      I3 => \o_digit_1000_inferred__0/i___75_carry__1_n_0\,
      I4 => \^slv_reg2_reg[8]\(1),
      O => o_digit_1000(1)
    );
\fndFont[6]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFDFFFF22020000"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(1),
      I1 => \o_digit_1000_inferred__0/i___75_carry__1_n_0\,
      I2 => \^i___50_carry__1_i_1_0\(0),
      I3 => Q(13),
      I4 => \^slv_reg2_reg[8]\(0),
      I5 => \^slv_reg2_reg[10]\(0),
      O => o_digit_1000(2)
    );
\fndFont[6]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7188AE7AE7118AE"
    )
        port map (
      I0 => o_digit_1000(2),
      I1 => o_digit_1000(7),
      I2 => o_digit_1000(5),
      I3 => o_digit_1000(6),
      I4 => o_digit_1000(4),
      I5 => o_digit_1000(3),
      O => \fndFont[6]_INST_0_i_34_n_0\
    );
\fndFont[6]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9569966969569569"
    )
        port map (
      I0 => o_digit_1000(2),
      I1 => o_digit_1000(3),
      I2 => o_digit_1000(7),
      I3 => o_digit_1000(5),
      I4 => o_digit_1000(6),
      I5 => o_digit_1000(4),
      O => \fndFont[6]_INST_0_i_35_n_0\
    );
\fndFont[6]_INST_0_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Q(13),
      I1 => \^slv_reg2_reg[13]\(3),
      I2 => \o_digit_10000__45_carry__1_n_1\,
      O => \slv_reg2_reg[13]_3\
    );
\fndFont[6]_INST_0_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^slv_reg2_reg[10]\(0),
      I1 => \^slv_reg2_reg[8]\(0),
      I2 => \fndFont[6]_INST_0_i_58_n_0\,
      I3 => \^slv_reg2_reg[8]\(1),
      I4 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      O => o_digit_1000(3)
    );
\fndFont[6]_INST_0_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      I1 => \fndFont[6]_INST_0_i_59_n_0\,
      I2 => \fndFont[6]_INST_0_i_58_n_0\,
      I3 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I4 => \o_digit_1000_inferred__0/i___1_carry__4_n_6\,
      O => o_digit_1000(7)
    );
\fndFont[6]_INST_0_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF75008A"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_59_n_0\,
      I1 => Q(13),
      I2 => \^i___50_carry__1_i_1_0\(0),
      I3 => \o_digit_1000_inferred__0/i___75_carry__1_n_0\,
      I4 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      O => o_digit_1000(5)
    );
\fndFont[6]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFDFFFF22020000"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I1 => \o_digit_1000_inferred__0/i___75_carry__1_n_0\,
      I2 => \^i___50_carry__1_i_1_0\(0),
      I3 => Q(13),
      I4 => \fndFont[6]_INST_0_i_59_n_0\,
      I5 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      O => o_digit_1000(6)
    );
\fndFont[6]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I1 => \^slv_reg2_reg[8]\(1),
      I2 => \fndFont[6]_INST_0_i_58_n_0\,
      I3 => \^slv_reg2_reg[8]\(0),
      I4 => \^slv_reg2_reg[10]\(0),
      I5 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      O => o_digit_1000(4)
    );
\fndFont[6]_INST_0_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Q(13),
      I1 => \^i___50_carry__1_i_1_0\(0),
      I2 => \o_digit_1000_inferred__0/i___75_carry__1_n_0\,
      O => \fndFont[6]_INST_0_i_58_n_0\
    );
\fndFont[6]_INST_0_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I1 => \^slv_reg2_reg[10]\(0),
      I2 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      I3 => \^slv_reg2_reg[8]\(0),
      I4 => \^slv_reg2_reg[8]\(1),
      O => \fndFont[6]_INST_0_i_59_n_0\
    );
\fndFont[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008200080A20002"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_1_0\,
      I1 => o_digit_1000(1),
      I2 => \^slv_reg2_reg[13]_0\,
      I3 => o_digit_1000(2),
      I4 => \fndFont[6]_INST_0_i_34_n_0\,
      I5 => \fndFont[6]_INST_0_i_35_n_0\,
      O => \fndFont[6]_INST_0_i_7_n_0\
    );
\fndFont[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0000000008"
    )
        port map (
      I0 => \fndFont[6]_INST_0_i_1_0\,
      I1 => o_digit_1000(1),
      I2 => \^slv_reg2_reg[13]_0\,
      I3 => o_digit_1000(2),
      I4 => \fndFont[6]_INST_0_i_34_n_0\,
      I5 => \fndFont[6]_INST_0_i_35_n_0\,
      O => \fndFont[6]_INST_0_i_9_n_0\
    );
\i___50_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      I1 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      O => \i___50_carry__0_i_1_n_0\
    );
\i___50_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I1 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      O => \i___50_carry__0_i_2_n_0\
    );
\i___50_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      I1 => \o_digit_1000_inferred__0/i___1_carry__4_n_6\,
      I2 => \^slv_reg2_reg[10]\(0),
      O => \i___50_carry__0_i_3_n_0\
    );
\i___50_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I1 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      I2 => \^slv_reg2_reg[8]\(1),
      O => \i___50_carry__0_i_4_n_0\
    );
\i___50_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      I1 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      I2 => \o_digit_1000_inferred__0/i___1_carry__4_n_6\,
      I3 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      O => \i___50_carry__0_i_5_n_0\
    );
\i___50_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I1 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I2 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      I3 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      O => \i___50_carry__0_i_6_n_0\
    );
\i___50_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^slv_reg2_reg[10]\(0),
      I1 => \o_digit_1000_inferred__0/i___1_carry__4_n_6\,
      I2 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      I3 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I4 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      O => \i___50_carry__0_i_7_n_0\
    );
\i___50_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(1),
      I1 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      I2 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I3 => \o_digit_1000_inferred__0/i___1_carry__4_n_6\,
      I4 => \^slv_reg2_reg[10]\(0),
      I5 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      O => \i___50_carry__0_i_8_n_0\
    );
\i___50_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I1 => \o_digit_1000_inferred__0/i___1_carry__4_n_6\,
      I2 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      O => \i___50_carry__1_i_1_n_0\
    );
\i___50_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^slv_reg2_reg[10]\(0),
      I1 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I2 => \^slv_reg2_reg[8]\(0),
      O => \i___50_carry_i_1_n_0\
    );
\i___50_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(0),
      I1 => \^slv_reg2_reg[10]\(0),
      I2 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      O => \i___50_carry_i_2_n_0\
    );
\i___50_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I1 => \^slv_reg2_reg[8]\(0),
      O => \i___50_carry_i_3_n_0\
    );
\i___50_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(0),
      I1 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I2 => \^slv_reg2_reg[10]\(0),
      I3 => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      I4 => \^slv_reg2_reg[8]\(1),
      I5 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      O => \i___50_carry_i_4_n_0\
    );
\i___50_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      I1 => \^slv_reg2_reg[10]\(0),
      I2 => \^slv_reg2_reg[8]\(0),
      I3 => \^slv_reg2_reg[8]\(1),
      I4 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      O => \i___50_carry_i_5_n_0\
    );
\i___50_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(0),
      I1 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I2 => \^slv_reg2_reg[8]\(1),
      I3 => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      O => \i___50_carry_i_6_n_0\
    );
\i___50_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      I1 => \^slv_reg2_reg[8]\(0),
      O => \i___50_carry_i_7_n_0\
    );
\i___75_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^i___50_carry_i_7_0\(3),
      I1 => Q(8),
      O => \i___75_carry__0_i_1_n_0\
    );
\i___75_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^i___50_carry_i_7_0\(2),
      I1 => Q(7),
      O => \i___75_carry__0_i_2_n_0\
    );
\i___75_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^i___50_carry_i_7_0\(1),
      I1 => Q(6),
      O => \i___75_carry__0_i_3_n_0\
    );
\i___75_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^i___50_carry_i_7_0\(0),
      I1 => Q(5),
      O => \i___75_carry__0_i_4_n_0\
    );
\i___75_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^i___50_carry__0_i_8_0\(3),
      I1 => Q(12),
      O => \i___75_carry__1_i_1_n_0\
    );
\i___75_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^i___50_carry__0_i_8_0\(2),
      I1 => Q(11),
      O => \i___75_carry__1_i_2_n_0\
    );
\i___75_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^i___50_carry__0_i_8_0\(1),
      I1 => Q(10),
      O => \i___75_carry__1_i_3_n_0\
    );
\i___75_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^i___50_carry__0_i_8_0\(0),
      I1 => Q(9),
      O => \i___75_carry__1_i_4_n_0\
    );
\i___75_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_reg2_reg[10]\(0),
      I1 => Q(4),
      O => \i___75_carry_i_1_n_0\
    );
\i___75_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(1),
      I1 => Q(3),
      O => \i___75_carry_i_2_n_0\
    );
\i___75_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_reg2_reg[8]\(0),
      I1 => Q(2),
      O => \i___75_carry_i_3_n_0\
    );
\o_digit_10000__17_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_digit_10000__17_carry_n_0\,
      CO(2) => \o_digit_10000__17_carry_n_1\,
      CO(1) => \o_digit_10000__17_carry_n_2\,
      CO(0) => \o_digit_10000__17_carry_n_3\,
      CYINIT => '0',
      DI(3) => \o_digit_10000__45_carry_i_6\(0),
      DI(2 downto 1) => Q(11 downto 10),
      DI(0) => '0',
      O(3 downto 1) => \^slv_reg2_reg[11]\(2 downto 0),
      O(0) => \NLW_o_digit_10000__17_carry_O_UNCONNECTED\(0),
      S(3) => \o_digit_10000__45_carry_i_6_0\(0),
      S(2 downto 1) => Q(11 downto 10),
      S(0) => '0'
    );
\o_digit_10000__17_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_10000__17_carry_n_0\,
      CO(3) => \o_digit_10000__17_carry__0_n_0\,
      CO(2) => \o_digit_10000__17_carry__0_n_1\,
      CO(1) => \o_digit_10000__17_carry__0_n_2\,
      CO(0) => \o_digit_10000__17_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \o_digit_10000__45_carry__0_i_8\(0),
      DI(2) => '0',
      DI(1) => \^o\(0),
      DI(0) => '0',
      O(3 downto 0) => \^slv_reg2_reg[11]_0\(3 downto 0),
      S(3) => \o_digit_10000__17_carry__0_i_2_n_0\,
      S(2 downto 0) => S(2 downto 0)
    );
\o_digit_10000__17_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^o\(1),
      I1 => Q(13),
      I2 => \^o\(2),
      O => \o_digit_10000__17_carry__0_i_2_n_0\
    );
\o_digit_10000__17_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_10000__17_carry__0_n_0\,
      CO(3) => \NLW_o_digit_10000__17_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \o_digit_10000__17_carry__1_n_1\,
      CO(1) => \o_digit_10000__17_carry__1_n_2\,
      CO(0) => \o_digit_10000__17_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \o_digit_10000__45_carry__1_i_6\(2 downto 0),
      O(3 downto 0) => \^slv_reg2_reg[13]\(3 downto 0),
      S(3) => \o_digit_10000__45_carry__1_i_6_0\(0),
      S(2) => \o_digit_10000__17_carry__1_i_5_n_0\,
      S(1) => \o_digit_10000__17_carry__1_i_6_n_0\,
      S(0) => \o_digit_10000__17_carry__1_i_7_n_0\
    );
\o_digit_10000__17_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \^slv_reg2_reg[12]\(1),
      I1 => \^co\(0),
      I2 => Q(13),
      O => \o_digit_10000__17_carry__1_i_5_n_0\
    );
\o_digit_10000__17_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \^slv_reg2_reg[12]\(0),
      I1 => \^slv_reg2_reg[12]\(1),
      I2 => Q(13),
      O => \o_digit_10000__17_carry__1_i_6_n_0\
    );
\o_digit_10000__17_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \^o\(2),
      I1 => \^slv_reg2_reg[12]\(0),
      I2 => Q(13),
      O => \o_digit_10000__17_carry__1_i_7_n_0\
    );
\o_digit_10000__45_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_digit_10000__45_carry_n_0\,
      CO(2) => \o_digit_10000__45_carry_n_1\,
      CO(1) => \o_digit_10000__45_carry_n_2\,
      CO(0) => \o_digit_10000__45_carry_n_3\,
      CYINIT => '0',
      DI(3) => \o_digit_10000__45_carry_i_1_n_0\,
      DI(2) => \o_digit_10000__45_carry_i_2_n_0\,
      DI(1) => \o_digit_10000__45_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_o_digit_10000__45_carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \o_digit_10000__45_carry__0_0\(3 downto 0)
    );
\o_digit_10000__45_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_10000__45_carry_n_0\,
      CO(3) => \o_digit_10000__45_carry__0_n_0\,
      CO(2) => \o_digit_10000__45_carry__0_n_1\,
      CO(1) => \o_digit_10000__45_carry__0_n_2\,
      CO(0) => \o_digit_10000__45_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \o_digit_10000__45_carry__0_i_1_n_0\,
      DI(2) => \o_digit_10000__45_carry__0_i_2_n_0\,
      DI(1) => \o_digit_10000__45_carry__0_i_3_n_0\,
      DI(0) => \o_digit_10000__45_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_o_digit_10000__45_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \o_digit_10000__45_carry__1_0\(3 downto 0)
    );
\o_digit_10000__45_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_reg2_reg[11]_0\(3),
      I1 => Q(9),
      O => \o_digit_10000__45_carry__0_i_1_n_0\
    );
\o_digit_10000__45_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_reg2_reg[11]_0\(2),
      I1 => Q(8),
      O => \o_digit_10000__45_carry__0_i_2_n_0\
    );
\o_digit_10000__45_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_reg2_reg[11]_0\(1),
      I1 => Q(7),
      O => \o_digit_10000__45_carry__0_i_3_n_0\
    );
\o_digit_10000__45_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_reg2_reg[11]_0\(0),
      I1 => Q(6),
      O => \o_digit_10000__45_carry__0_i_4_n_0\
    );
\o_digit_10000__45_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_10000__45_carry__0_n_0\,
      CO(3) => \NLW_o_digit_10000__45_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \o_digit_10000__45_carry__1_n_1\,
      CO(1) => \o_digit_10000__45_carry__1_n_2\,
      CO(0) => \o_digit_10000__45_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \o_digit_10000__45_carry__1_i_1_n_0\,
      DI(1) => \o_digit_10000__45_carry__1_i_2_n_0\,
      DI(0) => \o_digit_10000__45_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_o_digit_10000__45_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => \fndFont[6]_INST_0_i_30_0\(2 downto 0)
    );
\o_digit_10000__45_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_reg2_reg[13]\(2),
      I1 => Q(12),
      O => \o_digit_10000__45_carry__1_i_1_n_0\
    );
\o_digit_10000__45_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_reg2_reg[13]\(1),
      I1 => Q(11),
      O => \o_digit_10000__45_carry__1_i_2_n_0\
    );
\o_digit_10000__45_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_reg2_reg[13]\(0),
      I1 => Q(10),
      O => \o_digit_10000__45_carry__1_i_3_n_0\
    );
\o_digit_10000__45_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_reg2_reg[11]\(2),
      I1 => Q(5),
      O => \o_digit_10000__45_carry_i_1_n_0\
    );
\o_digit_10000__45_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_reg2_reg[11]\(1),
      I1 => Q(4),
      O => \o_digit_10000__45_carry_i_2_n_0\
    );
\o_digit_10000__45_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_reg2_reg[11]\(0),
      I1 => Q(3),
      O => \o_digit_10000__45_carry_i_3_n_0\
    );
o_digit_10000_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_digit_10000_carry_n_0,
      CO(2) => o_digit_10000_carry_n_1,
      CO(1) => o_digit_10000_carry_n_2,
      CO(0) => o_digit_10000_carry_n_3,
      CYINIT => '0',
      DI(3) => \o_digit_10000__17_carry__0_i_4\(2),
      DI(2 downto 0) => \o_digit_10000__17_carry__0_i_4\(2 downto 0),
      O(3 downto 1) => \^o\(2 downto 0),
      O(0) => NLW_o_digit_10000_carry_O_UNCONNECTED(0),
      S(3 downto 0) => \o_digit_10000__17_carry__0_i_4_0\(3 downto 0)
    );
\o_digit_10000_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_digit_10000_carry_n_0,
      CO(3) => \NLW_o_digit_10000_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \^co\(0),
      CO(1) => \NLW_o_digit_10000_carry__0_CO_UNCONNECTED\(1),
      CO(0) => \o_digit_10000_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => Q(12),
      DI(0) => \o_digit_10000__17_carry__0_i_4\(2),
      O(3 downto 2) => \NLW_o_digit_10000_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^slv_reg2_reg[12]\(1 downto 0),
      S(3 downto 2) => B"01",
      S(1 downto 0) => \o_digit_10000__17_carry__1_i_2\(1 downto 0)
    );
\o_digit_1000_inferred__0/i___1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_digit_1000_inferred__0/i___1_carry_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___1_carry_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___1_carry_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___1_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => Q(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3 downto 0) => \NLW_o_digit_1000_inferred__0/i___1_carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \o_digit_1000_inferred__0/i___1_carry__0_0\(2 downto 0),
      S(0) => Q(0)
    );
\o_digit_1000_inferred__0/i___1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___1_carry_n_0\,
      CO(3) => \o_digit_1000_inferred__0/i___1_carry__0_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___1_carry__0_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___1_carry__0_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \o_digit_1000_inferred__0/i___1_carry__1_0\(1 downto 0),
      DI(1 downto 0) => Q(3 downto 2),
      O(3 downto 0) => \NLW_o_digit_1000_inferred__0/i___1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \o_digit_1000_inferred__0/i___1_carry__1_1\(3 downto 0)
    );
\o_digit_1000_inferred__0/i___1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___1_carry__0_n_0\,
      CO(3) => \o_digit_1000_inferred__0/i___1_carry__1_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___1_carry__1_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___1_carry__1_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \o_digit_1000_inferred__0/i___1_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_o_digit_1000_inferred__0/i___1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \o_digit_1000_inferred__0/i___1_carry__2_1\(3 downto 0)
    );
\o_digit_1000_inferred__0/i___1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___1_carry__1_n_0\,
      CO(3) => \o_digit_1000_inferred__0/i___1_carry__2_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___1_carry__2_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___1_carry__2_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \i___75_carry_i_6\(3 downto 0),
      O(3 downto 2) => \^slv_reg2_reg[8]\(1 downto 0),
      O(1 downto 0) => \NLW_o_digit_1000_inferred__0/i___1_carry__2_O_UNCONNECTED\(1 downto 0),
      S(3 downto 0) => \i___75_carry_i_6_0\(3 downto 0)
    );
\o_digit_1000_inferred__0/i___1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___1_carry__2_n_0\,
      CO(3) => \o_digit_1000_inferred__0/i___1_carry__3_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___1_carry__3_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___1_carry__3_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3) => \o_digit_1000_inferred__0/i___1_carry__3_n_4\,
      O(2) => \o_digit_1000_inferred__0/i___1_carry__3_n_5\,
      O(1) => \o_digit_1000_inferred__0/i___1_carry__3_n_6\,
      O(0) => \^slv_reg2_reg[10]\(0),
      S(3 downto 0) => \i___75_carry_i_4\(3 downto 0)
    );
\o_digit_1000_inferred__0/i___1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___1_carry__3_n_0\,
      CO(3 downto 1) => \NLW_o_digit_1000_inferred__0/i___1_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \o_digit_1000_inferred__0/i___1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i___50_carry_i_4_0\(0),
      O(3 downto 2) => \NLW_o_digit_1000_inferred__0/i___1_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1) => \o_digit_1000_inferred__0/i___1_carry__4_n_6\,
      O(0) => \o_digit_1000_inferred__0/i___1_carry__4_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \i___50_carry_i_4_1\(1 downto 0)
    );
\o_digit_1000_inferred__0/i___50_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_digit_1000_inferred__0/i___50_carry_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___50_carry_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___50_carry_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___50_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___50_carry_i_1_n_0\,
      DI(2) => \i___50_carry_i_2_n_0\,
      DI(1) => \i___50_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \^i___50_carry_i_7_0\(3 downto 0),
      S(3) => \i___50_carry_i_4_n_0\,
      S(2) => \i___50_carry_i_5_n_0\,
      S(1) => \i___50_carry_i_6_n_0\,
      S(0) => \i___50_carry_i_7_n_0\
    );
\o_digit_1000_inferred__0/i___50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___50_carry_n_0\,
      CO(3) => \o_digit_1000_inferred__0/i___50_carry__0_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___50_carry__0_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___50_carry__0_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___50_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___50_carry__0_i_1_n_0\,
      DI(2) => \i___50_carry__0_i_2_n_0\,
      DI(1) => \i___50_carry__0_i_3_n_0\,
      DI(0) => \i___50_carry__0_i_4_n_0\,
      O(3 downto 0) => \^i___50_carry__0_i_8_0\(3 downto 0),
      S(3) => \i___50_carry__0_i_5_n_0\,
      S(2) => \i___50_carry__0_i_6_n_0\,
      S(1) => \i___50_carry__0_i_7_n_0\,
      S(0) => \i___50_carry__0_i_8_n_0\
    );
\o_digit_1000_inferred__0/i___50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___50_carry__0_n_0\,
      CO(3 downto 0) => \NLW_o_digit_1000_inferred__0/i___50_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_o_digit_1000_inferred__0/i___50_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \^i___50_carry__1_i_1_0\(0),
      S(3 downto 1) => B"000",
      S(0) => \i___50_carry__1_i_1_n_0\
    );
\o_digit_1000_inferred__0/i___75_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_digit_1000_inferred__0/i___75_carry_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___75_carry_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___75_carry_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___75_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___75_carry_i_1_n_0\,
      DI(2) => \i___75_carry_i_2_n_0\,
      DI(1) => \i___75_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_o_digit_1000_inferred__0/i___75_carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \o_digit_1000_inferred__0/i___75_carry__0_0\(3 downto 0)
    );
\o_digit_1000_inferred__0/i___75_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___75_carry_n_0\,
      CO(3) => \o_digit_1000_inferred__0/i___75_carry__0_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___75_carry__0_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___75_carry__0_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___75_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___75_carry__0_i_1_n_0\,
      DI(2) => \i___75_carry__0_i_2_n_0\,
      DI(1) => \i___75_carry__0_i_3_n_0\,
      DI(0) => \i___75_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_o_digit_1000_inferred__0/i___75_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \o_digit_1000_inferred__0/i___75_carry__1_0\(3 downto 0)
    );
\o_digit_1000_inferred__0/i___75_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_digit_1000_inferred__0/i___75_carry__0_n_0\,
      CO(3) => \o_digit_1000_inferred__0/i___75_carry__1_n_0\,
      CO(2) => \o_digit_1000_inferred__0/i___75_carry__1_n_1\,
      CO(1) => \o_digit_1000_inferred__0/i___75_carry__1_n_2\,
      CO(0) => \o_digit_1000_inferred__0/i___75_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i___75_carry__1_i_1_n_0\,
      DI(2) => \i___75_carry__1_i_2_n_0\,
      DI(1) => \i___75_carry__1_i_3_n_0\,
      DI(0) => \i___75_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_o_digit_1000_inferred__0/i___75_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \fndFont[6]_INST_0_i_19_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fndController is
  port (
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[12]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[11]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[13]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[8]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i___50_carry_i_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___50_carry__0_i_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___50_carry__1_i_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    fndFont : out STD_LOGIC_VECTOR ( 6 downto 0 );
    i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fndCom : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_10000__17_carry__0_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_10000__17_carry__0_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \o_digit_10000__17_carry__1_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_10000__45_carry_i_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__45_carry_i_6_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__45_carry__0_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_10000__45_carry__1_i_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_10000__45_carry__1_i_6_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_digit_10000__45_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_10000__45_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \fndFont[6]_INST_0_i_30\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___1_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___75_carry_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___75_carry_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___75_carry_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i___50_carry_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i___50_carry_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_digit_1000_inferred__0/i___75_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \fndFont[6]_INST_0_i_19\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    fndFont_6_sp_1 : in STD_LOGIC;
    \fndFont[6]_0\ : in STD_LOGIC;
    \fndFont[6]_1\ : in STD_LOGIC;
    \fndFont[6]_2\ : in STD_LOGIC;
    \fndFont[6]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fndFont_0_sp_1 : in STD_LOGIC;
    \fndFont[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fndController;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fndController is
  signal U_Counter_2bit_n_14 : STD_LOGIC;
  signal U_Counter_2bit_n_9 : STD_LOGIC;
  signal U_DigitSplitter_n_29 : STD_LOGIC;
  signal U_DigitSplitter_n_30 : STD_LOGIC;
  signal U_DigitSplitter_n_31 : STD_LOGIC;
  signal U_DigitSplitter_n_32 : STD_LOGIC;
  signal U_DigitSplitter_n_33 : STD_LOGIC;
  signal U_DigitSplitter_n_34 : STD_LOGIC;
  signal U_DigitSplitter_n_35 : STD_LOGIC;
  signal U_DigitSplitter_n_36 : STD_LOGIC;
  signal fndFont_0_sn_1 : STD_LOGIC;
  signal fndFont_6_sn_1 : STD_LOGIC;
  signal r_tick : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  fndFont_0_sn_1 <= fndFont_0_sp_1;
  fndFont_6_sn_1 <= fndFont_6_sp_1;
U_ClkDiv: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkDiv
     port map (
      r_tick => r_tick,
      s00_axi_aclk => s00_axi_aclk
    );
U_Counter_2bit: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
     port map (
      Q(4 downto 1) => Q(13 downto 10),
      Q(0) => Q(0),
      \counter_reg[0]_0\ => i(0),
      \counter_reg[0]_1\ => U_Counter_2bit_n_9,
      \counter_reg[1]_0\ => i(1),
      \counter_reg[1]_1\ => U_Counter_2bit_n_14,
      fndCom(3 downto 0) => fndCom(3 downto 0),
      fndFont(6 downto 0) => fndFont(6 downto 0),
      \fndFont[0]\(0) => sel0(3),
      \fndFont[6]_0\ => U_DigitSplitter_n_29,
      \fndFont[6]_1\ => \fndFont[6]_0\,
      \fndFont[6]_2\ => U_DigitSplitter_n_31,
      \fndFont[6]_3\ => \fndFont[6]_1\,
      \fndFont[6]_4\ => U_DigitSplitter_n_32,
      \fndFont[6]_5\ => \fndFont[6]_2\,
      \fndFont[6]_6\ => U_DigitSplitter_n_33,
      \fndFont[6]_7\(0) => \fndFont[6]_3\(0),
      \fndFont[6]_8\ => U_DigitSplitter_n_30,
      \fndFont[6]_9\ => U_DigitSplitter_n_34,
      \fndFont[6]_INST_0_i_3_0\ => U_DigitSplitter_n_36,
      \fndFont[6]_INST_0_i_4_0\ => U_DigitSplitter_n_35,
      fndFont_6_sp_1 => fndFont_6_sn_1,
      r_tick => r_tick
    );
U_DigitSplitter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digitSplitter
     port map (
      CO(0) => CO(0),
      DI(3 downto 0) => DI(3 downto 0),
      O(2 downto 0) => O(2 downto 0),
      Q(13 downto 0) => Q(13 downto 0),
      S(2 downto 0) => S(2 downto 0),
      \counter_reg[1]\ => U_DigitSplitter_n_29,
      \counter_reg[1]_0\ => U_DigitSplitter_n_31,
      \counter_reg[1]_1\ => U_DigitSplitter_n_32,
      \counter_reg[1]_2\ => U_DigitSplitter_n_33,
      \counter_reg[1]_3\(0) => sel0(3),
      \fndFont[0]\ => fndFont_0_sn_1,
      \fndFont[0]_0\ => U_Counter_2bit_n_9,
      \fndFont[0]_1\ => \fndFont[0]_0\,
      \fndFont[6]_INST_0_i_19_0\(3 downto 0) => \fndFont[6]_INST_0_i_19\(3 downto 0),
      \fndFont[6]_INST_0_i_1_0\ => U_Counter_2bit_n_14,
      \fndFont[6]_INST_0_i_30_0\(2 downto 0) => \fndFont[6]_INST_0_i_30\(2 downto 0),
      \i___50_carry__0_i_8_0\(3 downto 0) => \i___50_carry__0_i_8\(3 downto 0),
      \i___50_carry__1_i_1_0\(0) => \i___50_carry__1_i_1\(0),
      \i___50_carry_i_4_0\(0) => \i___50_carry_i_4\(0),
      \i___50_carry_i_4_1\(1 downto 0) => \i___50_carry_i_4_0\(1 downto 0),
      \i___50_carry_i_7_0\(3 downto 0) => \i___50_carry_i_7\(3 downto 0),
      \i___75_carry_i_4\(3 downto 0) => \i___75_carry_i_4\(3 downto 0),
      \i___75_carry_i_6\(3 downto 0) => \i___75_carry_i_6\(3 downto 0),
      \i___75_carry_i_6_0\(3 downto 0) => \i___75_carry_i_6_0\(3 downto 0),
      \o_digit_10000__17_carry__0_i_4\(2 downto 0) => \o_digit_10000__17_carry__0_i_4\(2 downto 0),
      \o_digit_10000__17_carry__0_i_4_0\(3 downto 0) => \o_digit_10000__17_carry__0_i_4_0\(3 downto 0),
      \o_digit_10000__17_carry__1_i_2\(1 downto 0) => \o_digit_10000__17_carry__1_i_2\(1 downto 0),
      \o_digit_10000__45_carry__0_0\(3 downto 0) => \o_digit_10000__45_carry__0\(3 downto 0),
      \o_digit_10000__45_carry__0_i_8\(0) => \o_digit_10000__45_carry__0_i_8\(0),
      \o_digit_10000__45_carry__1_0\(3 downto 0) => \o_digit_10000__45_carry__1\(3 downto 0),
      \o_digit_10000__45_carry__1_i_6\(2 downto 0) => \o_digit_10000__45_carry__1_i_6\(2 downto 0),
      \o_digit_10000__45_carry__1_i_6_0\(0) => \o_digit_10000__45_carry__1_i_6_0\(0),
      \o_digit_10000__45_carry_i_6\(0) => \o_digit_10000__45_carry_i_6\(0),
      \o_digit_10000__45_carry_i_6_0\(0) => \o_digit_10000__45_carry_i_6_0\(0),
      \o_digit_1000_inferred__0/i___1_carry__0_0\(2 downto 0) => \o_digit_1000_inferred__0/i___1_carry__0\(2 downto 0),
      \o_digit_1000_inferred__0/i___1_carry__1_0\(1 downto 0) => \o_digit_1000_inferred__0/i___1_carry__1\(1 downto 0),
      \o_digit_1000_inferred__0/i___1_carry__1_1\(3 downto 0) => \o_digit_1000_inferred__0/i___1_carry__1_0\(3 downto 0),
      \o_digit_1000_inferred__0/i___1_carry__2_0\(3 downto 0) => \o_digit_1000_inferred__0/i___1_carry__2\(3 downto 0),
      \o_digit_1000_inferred__0/i___1_carry__2_1\(3 downto 0) => \o_digit_1000_inferred__0/i___1_carry__2_0\(3 downto 0),
      \o_digit_1000_inferred__0/i___75_carry__0_0\(3 downto 0) => \o_digit_1000_inferred__0/i___75_carry__0\(3 downto 0),
      \o_digit_1000_inferred__0/i___75_carry__1_0\(3 downto 0) => \o_digit_1000_inferred__0/i___75_carry__1\(3 downto 0),
      \slv_reg2_reg[10]\(0) => \slv_reg2_reg[10]\(0),
      \slv_reg2_reg[11]\(2 downto 0) => \slv_reg2_reg[11]\(2 downto 0),
      \slv_reg2_reg[11]_0\(3 downto 0) => \slv_reg2_reg[11]_0\(3 downto 0),
      \slv_reg2_reg[12]\(1 downto 0) => \slv_reg2_reg[12]\(1 downto 0),
      \slv_reg2_reg[13]\(3 downto 0) => \slv_reg2_reg[13]\(3 downto 0),
      \slv_reg2_reg[13]_0\ => U_DigitSplitter_n_30,
      \slv_reg2_reg[13]_1\ => U_DigitSplitter_n_34,
      \slv_reg2_reg[13]_2\ => U_DigitSplitter_n_35,
      \slv_reg2_reg[13]_3\ => U_DigitSplitter_n_36,
      \slv_reg2_reg[8]\(1 downto 0) => \slv_reg2_reg[8]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    fndFont : out STD_LOGIC_VECTOR ( 6 downto 0 );
    fndCom : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0 is
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_100 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_101 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_102 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_103 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_22 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_23 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_24 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_25 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_26 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_27 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_28 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_29 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_30 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_31 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_32 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_33 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_34 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_35 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_36 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_37 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_38 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_39 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_41 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_42 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_43 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_44 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_45 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_46 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_47 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_48 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_49 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_50 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_51 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_52 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_53 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_54 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_55 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_56 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_57 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_58 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_59 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_60 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_61 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_62 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_63 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_64 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_65 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_66 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_67 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_68 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_69 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_70 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_71 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_72 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_73 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_74 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_75 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_76 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_77 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_78 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_79 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_80 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_81 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_82 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_83 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_84 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_85 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_86 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_87 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_88 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_89 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_90 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_91 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_92 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_93 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_94 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_95 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_96 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_97 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_98 : STD_LOGIC;
  signal FND_Controller_ip_v1_0_S00_AXI_inst_n_99 : STD_LOGIC;
  signal U_fndController_n_0 : STD_LOGIC;
  signal U_fndController_n_1 : STD_LOGIC;
  signal U_fndController_n_10 : STD_LOGIC;
  signal U_fndController_n_11 : STD_LOGIC;
  signal U_fndController_n_12 : STD_LOGIC;
  signal U_fndController_n_13 : STD_LOGIC;
  signal U_fndController_n_14 : STD_LOGIC;
  signal U_fndController_n_15 : STD_LOGIC;
  signal U_fndController_n_16 : STD_LOGIC;
  signal U_fndController_n_17 : STD_LOGIC;
  signal U_fndController_n_18 : STD_LOGIC;
  signal U_fndController_n_19 : STD_LOGIC;
  signal U_fndController_n_2 : STD_LOGIC;
  signal U_fndController_n_20 : STD_LOGIC;
  signal U_fndController_n_21 : STD_LOGIC;
  signal U_fndController_n_22 : STD_LOGIC;
  signal U_fndController_n_23 : STD_LOGIC;
  signal U_fndController_n_24 : STD_LOGIC;
  signal U_fndController_n_25 : STD_LOGIC;
  signal U_fndController_n_26 : STD_LOGIC;
  signal U_fndController_n_27 : STD_LOGIC;
  signal U_fndController_n_28 : STD_LOGIC;
  signal U_fndController_n_3 : STD_LOGIC;
  signal U_fndController_n_4 : STD_LOGIC;
  signal U_fndController_n_5 : STD_LOGIC;
  signal U_fndController_n_6 : STD_LOGIC;
  signal U_fndController_n_7 : STD_LOGIC;
  signal U_fndController_n_8 : STD_LOGIC;
  signal U_fndController_n_9 : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal o_digit_100 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_digit : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
FND_Controller_ip_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0_S00_AXI
     port map (
      CO(0) => U_fndController_n_3,
      DI(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_33,
      DI(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_34,
      DI(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_35,
      DI(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_36,
      O(2) => U_fndController_n_0,
      O(1) => U_fndController_n_1,
      O(0) => U_fndController_n_2,
      Q(13 downto 0) => w_digit(13 downto 0),
      S(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_5,
      S(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_6,
      S(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_7,
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      \counter_reg[1]\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_38,
      \counter_reg[1]_0\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_39,
      \counter_reg[1]_1\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_41,
      \counter_reg[1]_2\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_42,
      \counter_reg[1]_3\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_43,
      \counter_reg[1]_4\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_44,
      i(1 downto 0) => i(1 downto 0),
      \o_digit_10000__17_carry__1\(1) => U_fndController_n_4,
      \o_digit_10000__17_carry__1\(0) => U_fndController_n_5,
      \o_digit_10000__45_carry\(2) => U_fndController_n_6,
      \o_digit_10000__45_carry\(1) => U_fndController_n_7,
      \o_digit_10000__45_carry\(0) => U_fndController_n_8,
      \o_digit_10000__45_carry__0\(3) => U_fndController_n_9,
      \o_digit_10000__45_carry__0\(2) => U_fndController_n_10,
      \o_digit_10000__45_carry__0\(1) => U_fndController_n_11,
      \o_digit_10000__45_carry__0\(0) => U_fndController_n_12,
      \o_digit_10000__45_carry__1\(3) => U_fndController_n_13,
      \o_digit_10000__45_carry__1\(2) => U_fndController_n_14,
      \o_digit_10000__45_carry__1\(1) => U_fndController_n_15,
      \o_digit_10000__45_carry__1\(0) => U_fndController_n_16,
      \o_digit_1000_inferred__0/i___75_carry\(1) => U_fndController_n_17,
      \o_digit_1000_inferred__0/i___75_carry\(0) => U_fndController_n_18,
      \o_digit_1000_inferred__0/i___75_carry_0\(0) => U_fndController_n_19,
      \o_digit_1000_inferred__0/i___75_carry__0\(3) => U_fndController_n_20,
      \o_digit_1000_inferred__0/i___75_carry__0\(2) => U_fndController_n_21,
      \o_digit_1000_inferred__0/i___75_carry__0\(1) => U_fndController_n_22,
      \o_digit_1000_inferred__0/i___75_carry__0\(0) => U_fndController_n_23,
      \o_digit_1000_inferred__0/i___75_carry__1\(3) => U_fndController_n_24,
      \o_digit_1000_inferred__0/i___75_carry__1\(2) => U_fndController_n_25,
      \o_digit_1000_inferred__0/i___75_carry__1\(1) => U_fndController_n_26,
      \o_digit_1000_inferred__0/i___75_carry__1\(0) => U_fndController_n_27,
      \o_digit_1000_inferred__0/i___75_carry__1_0\(0) => U_fndController_n_28,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg2_reg[10]_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_45,
      \slv_reg2_reg[10]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_46,
      \slv_reg2_reg[10]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_47,
      \slv_reg2_reg[10]_1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_65,
      \slv_reg2_reg[10]_1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_66,
      \slv_reg2_reg[10]_1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_67,
      \slv_reg2_reg[10]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_68,
      \slv_reg2_reg[10]_2\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_88,
      \slv_reg2_reg[10]_2\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_89,
      \slv_reg2_reg[10]_2\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_90,
      \slv_reg2_reg[10]_2\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_91,
      \slv_reg2_reg[11]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_22,
      \slv_reg2_reg[11]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_23,
      \slv_reg2_reg[11]_1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_80,
      \slv_reg2_reg[11]_1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_81,
      \slv_reg2_reg[11]_1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_82,
      \slv_reg2_reg[11]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_83,
      \slv_reg2_reg[12]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_37,
      \slv_reg2_reg[12]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_48,
      \slv_reg2_reg[12]_2\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_64,
      \slv_reg2_reg[12]_3\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_77,
      \slv_reg2_reg[12]_3\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_78,
      \slv_reg2_reg[12]_3\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_79,
      \slv_reg2_reg[12]_4\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_100,
      \slv_reg2_reg[12]_4\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_101,
      \slv_reg2_reg[12]_4\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_102,
      \slv_reg2_reg[12]_4\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_103,
      \slv_reg2_reg[13]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_24,
      \slv_reg2_reg[13]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_25,
      \slv_reg2_reg[13]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_49,
      \slv_reg2_reg[13]_2\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_50,
      \slv_reg2_reg[13]_2\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_51,
      \slv_reg2_reg[13]_2\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_52,
      \slv_reg2_reg[13]_3\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_53,
      \slv_reg2_reg[1]_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_26,
      \slv_reg2_reg[1]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_27,
      \slv_reg2_reg[1]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_28,
      \slv_reg2_reg[1]_1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_29,
      \slv_reg2_reg[1]_1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_30,
      \slv_reg2_reg[1]_1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_31,
      \slv_reg2_reg[1]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_32,
      \slv_reg2_reg[2]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_58,
      \slv_reg2_reg[2]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_59,
      \slv_reg2_reg[3]_0\(0) => o_digit_100(0),
      \slv_reg2_reg[4]_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_60,
      \slv_reg2_reg[4]_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_61,
      \slv_reg2_reg[4]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_62,
      \slv_reg2_reg[4]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_63,
      \slv_reg2_reg[4]_1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_92,
      \slv_reg2_reg[4]_1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_93,
      \slv_reg2_reg[4]_1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_94,
      \slv_reg2_reg[4]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_95,
      \slv_reg2_reg[5]_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_69,
      \slv_reg2_reg[5]_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_70,
      \slv_reg2_reg[5]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_71,
      \slv_reg2_reg[5]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_72,
      \slv_reg2_reg[8]_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_54,
      \slv_reg2_reg[8]_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_55,
      \slv_reg2_reg[8]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_56,
      \slv_reg2_reg[8]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_57,
      \slv_reg2_reg[8]_1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_96,
      \slv_reg2_reg[8]_1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_97,
      \slv_reg2_reg[8]_1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_98,
      \slv_reg2_reg[8]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_99,
      \slv_reg2_reg[9]_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_73,
      \slv_reg2_reg[9]_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_74,
      \slv_reg2_reg[9]_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_75,
      \slv_reg2_reg[9]_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_76,
      \slv_reg2_reg[9]_1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_84,
      \slv_reg2_reg[9]_1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_85,
      \slv_reg2_reg[9]_1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_86,
      \slv_reg2_reg[9]_1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_87
    );
U_fndController: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fndController
     port map (
      CO(0) => U_fndController_n_3,
      DI(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_33,
      DI(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_34,
      DI(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_35,
      DI(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_36,
      O(2) => U_fndController_n_0,
      O(1) => U_fndController_n_1,
      O(0) => U_fndController_n_2,
      Q(13 downto 0) => w_digit(13 downto 0),
      S(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_5,
      S(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_6,
      S(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_7,
      fndCom(3 downto 0) => fndCom(3 downto 0),
      fndFont(6 downto 0) => fndFont(6 downto 0),
      \fndFont[0]_0\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_44,
      \fndFont[6]_0\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_39,
      \fndFont[6]_1\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_41,
      \fndFont[6]_2\ => FND_Controller_ip_v1_0_S00_AXI_inst_n_42,
      \fndFont[6]_3\(0) => o_digit_100(0),
      \fndFont[6]_INST_0_i_19\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_100,
      \fndFont[6]_INST_0_i_19\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_101,
      \fndFont[6]_INST_0_i_19\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_102,
      \fndFont[6]_INST_0_i_19\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_103,
      \fndFont[6]_INST_0_i_30\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_77,
      \fndFont[6]_INST_0_i_30\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_78,
      \fndFont[6]_INST_0_i_30\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_79,
      fndFont_0_sp_1 => FND_Controller_ip_v1_0_S00_AXI_inst_n_43,
      fndFont_6_sp_1 => FND_Controller_ip_v1_0_S00_AXI_inst_n_38,
      i(1 downto 0) => i(1 downto 0),
      \i___50_carry__0_i_8\(3) => U_fndController_n_24,
      \i___50_carry__0_i_8\(2) => U_fndController_n_25,
      \i___50_carry__0_i_8\(1) => U_fndController_n_26,
      \i___50_carry__0_i_8\(0) => U_fndController_n_27,
      \i___50_carry__1_i_1\(0) => U_fndController_n_28,
      \i___50_carry_i_4\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_48,
      \i___50_carry_i_4_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_24,
      \i___50_carry_i_4_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_25,
      \i___50_carry_i_7\(3) => U_fndController_n_20,
      \i___50_carry_i_7\(2) => U_fndController_n_21,
      \i___50_carry_i_7\(1) => U_fndController_n_22,
      \i___50_carry_i_7\(0) => U_fndController_n_23,
      \i___75_carry_i_4\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_88,
      \i___75_carry_i_4\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_89,
      \i___75_carry_i_4\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_90,
      \i___75_carry_i_4\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_91,
      \i___75_carry_i_6\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_54,
      \i___75_carry_i_6\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_55,
      \i___75_carry_i_6\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_56,
      \i___75_carry_i_6\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_57,
      \i___75_carry_i_6_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_84,
      \i___75_carry_i_6_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_85,
      \i___75_carry_i_6_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_86,
      \i___75_carry_i_6_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_87,
      \o_digit_10000__17_carry__0_i_4\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_45,
      \o_digit_10000__17_carry__0_i_4\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_46,
      \o_digit_10000__17_carry__0_i_4\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_47,
      \o_digit_10000__17_carry__0_i_4_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_65,
      \o_digit_10000__17_carry__0_i_4_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_66,
      \o_digit_10000__17_carry__0_i_4_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_67,
      \o_digit_10000__17_carry__0_i_4_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_68,
      \o_digit_10000__17_carry__1_i_2\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_22,
      \o_digit_10000__17_carry__1_i_2\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_23,
      \o_digit_10000__45_carry__0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_69,
      \o_digit_10000__45_carry__0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_70,
      \o_digit_10000__45_carry__0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_71,
      \o_digit_10000__45_carry__0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_72,
      \o_digit_10000__45_carry__0_i_8\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_53,
      \o_digit_10000__45_carry__1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_73,
      \o_digit_10000__45_carry__1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_74,
      \o_digit_10000__45_carry__1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_75,
      \o_digit_10000__45_carry__1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_76,
      \o_digit_10000__45_carry__1_i_6\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_50,
      \o_digit_10000__45_carry__1_i_6\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_51,
      \o_digit_10000__45_carry__1_i_6\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_52,
      \o_digit_10000__45_carry__1_i_6_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_49,
      \o_digit_10000__45_carry_i_6\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_37,
      \o_digit_10000__45_carry_i_6_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_64,
      \o_digit_1000_inferred__0/i___1_carry__0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_26,
      \o_digit_1000_inferred__0/i___1_carry__0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_27,
      \o_digit_1000_inferred__0/i___1_carry__0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_28,
      \o_digit_1000_inferred__0/i___1_carry__1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_58,
      \o_digit_1000_inferred__0/i___1_carry__1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_59,
      \o_digit_1000_inferred__0/i___1_carry__1_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_29,
      \o_digit_1000_inferred__0/i___1_carry__1_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_30,
      \o_digit_1000_inferred__0/i___1_carry__1_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_31,
      \o_digit_1000_inferred__0/i___1_carry__1_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_32,
      \o_digit_1000_inferred__0/i___1_carry__2\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_60,
      \o_digit_1000_inferred__0/i___1_carry__2\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_61,
      \o_digit_1000_inferred__0/i___1_carry__2\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_62,
      \o_digit_1000_inferred__0/i___1_carry__2\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_63,
      \o_digit_1000_inferred__0/i___1_carry__2_0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_80,
      \o_digit_1000_inferred__0/i___1_carry__2_0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_81,
      \o_digit_1000_inferred__0/i___1_carry__2_0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_82,
      \o_digit_1000_inferred__0/i___1_carry__2_0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_83,
      \o_digit_1000_inferred__0/i___75_carry__0\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_92,
      \o_digit_1000_inferred__0/i___75_carry__0\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_93,
      \o_digit_1000_inferred__0/i___75_carry__0\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_94,
      \o_digit_1000_inferred__0/i___75_carry__0\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_95,
      \o_digit_1000_inferred__0/i___75_carry__1\(3) => FND_Controller_ip_v1_0_S00_AXI_inst_n_96,
      \o_digit_1000_inferred__0/i___75_carry__1\(2) => FND_Controller_ip_v1_0_S00_AXI_inst_n_97,
      \o_digit_1000_inferred__0/i___75_carry__1\(1) => FND_Controller_ip_v1_0_S00_AXI_inst_n_98,
      \o_digit_1000_inferred__0/i___75_carry__1\(0) => FND_Controller_ip_v1_0_S00_AXI_inst_n_99,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg2_reg[10]\(0) => U_fndController_n_19,
      \slv_reg2_reg[11]\(2) => U_fndController_n_6,
      \slv_reg2_reg[11]\(1) => U_fndController_n_7,
      \slv_reg2_reg[11]\(0) => U_fndController_n_8,
      \slv_reg2_reg[11]_0\(3) => U_fndController_n_9,
      \slv_reg2_reg[11]_0\(2) => U_fndController_n_10,
      \slv_reg2_reg[11]_0\(1) => U_fndController_n_11,
      \slv_reg2_reg[11]_0\(0) => U_fndController_n_12,
      \slv_reg2_reg[12]\(1) => U_fndController_n_4,
      \slv_reg2_reg[12]\(0) => U_fndController_n_5,
      \slv_reg2_reg[13]\(3) => U_fndController_n_13,
      \slv_reg2_reg[13]\(2) => U_fndController_n_14,
      \slv_reg2_reg[13]\(1) => U_fndController_n_15,
      \slv_reg2_reg[13]\(0) => U_fndController_n_16,
      \slv_reg2_reg[8]\(1) => U_fndController_n_17,
      \slv_reg2_reg[8]\(0) => U_fndController_n_18
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    fndFont : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fndCom : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_FNDController_0_0,FND_Controller_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "FND_Controller_ip_v1_0,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^fndfont\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  fndFont(7) <= \<const1>\;
  fndFont(6 downto 0) <= \^fndfont\(6 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FND_Controller_ip_v1_0
     port map (
      fndCom(3 downto 0) => fndCom(3 downto 0),
      fndFont(6 downto 0) => \^fndfont\(6 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;

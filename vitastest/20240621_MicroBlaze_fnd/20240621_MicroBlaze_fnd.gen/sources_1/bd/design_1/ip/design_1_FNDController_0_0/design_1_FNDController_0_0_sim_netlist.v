// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun 21 14:12:09 2024
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_RISC/vitastest/20240621_MicroBlaze_fnd/20240621_MicroBlaze_fnd.gen/sources_1/bd/design_1/ip/design_1_FNDController_0_0/design_1_FNDController_0_0_sim_netlist.v
// Design      : design_1_FNDController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FNDController_0_0,FND_Controller_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "FND_Controller_ip_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_FNDController_0_0
   (fndFont,
    fndCom,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [7:0]fndFont;
  output [3:0]fndCom;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]fndCom;
  wire [6:0]\^fndFont ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign fndFont[7] = \<const1> ;
  assign fndFont[6:0] = \^fndFont [6:0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_FNDController_0_0_FND_Controller_ip_v1_0 inst
       (.fndCom(fndCom),
        .fndFont(\^fndFont ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "FND_Controller_ip_v1_0" *) 
module design_1_FNDController_0_0_FND_Controller_ip_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    fndFont,
    fndCom,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output [6:0]fndFont;
  output [3:0]fndCom;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_100;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_101;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_102;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_103;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_22;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_23;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_24;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_25;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_26;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_27;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_28;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_29;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_30;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_31;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_32;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_33;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_34;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_35;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_36;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_37;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_38;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_39;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_41;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_42;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_43;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_44;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_45;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_46;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_47;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_48;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_49;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_5;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_50;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_51;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_52;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_53;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_54;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_55;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_56;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_57;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_58;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_59;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_6;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_60;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_61;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_62;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_63;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_64;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_65;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_66;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_67;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_68;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_69;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_7;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_70;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_71;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_72;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_73;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_74;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_75;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_76;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_77;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_78;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_79;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_80;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_81;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_82;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_83;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_84;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_85;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_86;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_87;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_88;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_89;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_90;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_91;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_92;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_93;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_94;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_95;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_96;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_97;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_98;
  wire FND_Controller_ip_v1_0_S00_AXI_inst_n_99;
  wire U_fndController_n_0;
  wire U_fndController_n_1;
  wire U_fndController_n_10;
  wire U_fndController_n_11;
  wire U_fndController_n_12;
  wire U_fndController_n_13;
  wire U_fndController_n_14;
  wire U_fndController_n_15;
  wire U_fndController_n_16;
  wire U_fndController_n_17;
  wire U_fndController_n_18;
  wire U_fndController_n_19;
  wire U_fndController_n_2;
  wire U_fndController_n_20;
  wire U_fndController_n_21;
  wire U_fndController_n_22;
  wire U_fndController_n_23;
  wire U_fndController_n_24;
  wire U_fndController_n_25;
  wire U_fndController_n_26;
  wire U_fndController_n_27;
  wire U_fndController_n_28;
  wire U_fndController_n_3;
  wire U_fndController_n_4;
  wire U_fndController_n_5;
  wire U_fndController_n_6;
  wire U_fndController_n_7;
  wire U_fndController_n_8;
  wire U_fndController_n_9;
  wire [3:0]fndCom;
  wire [6:0]fndFont;
  wire [1:0]i;
  wire [0:0]o_digit_100;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [13:0]w_digit;

  design_1_FNDController_0_0_FND_Controller_ip_v1_0_S00_AXI FND_Controller_ip_v1_0_S00_AXI_inst
       (.CO(U_fndController_n_3),
        .DI({FND_Controller_ip_v1_0_S00_AXI_inst_n_33,FND_Controller_ip_v1_0_S00_AXI_inst_n_34,FND_Controller_ip_v1_0_S00_AXI_inst_n_35,FND_Controller_ip_v1_0_S00_AXI_inst_n_36}),
        .O({U_fndController_n_0,U_fndController_n_1,U_fndController_n_2}),
        .Q(w_digit),
        .S({FND_Controller_ip_v1_0_S00_AXI_inst_n_5,FND_Controller_ip_v1_0_S00_AXI_inst_n_6,FND_Controller_ip_v1_0_S00_AXI_inst_n_7}),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .\counter_reg[1] (FND_Controller_ip_v1_0_S00_AXI_inst_n_38),
        .\counter_reg[1]_0 (FND_Controller_ip_v1_0_S00_AXI_inst_n_39),
        .\counter_reg[1]_1 (FND_Controller_ip_v1_0_S00_AXI_inst_n_41),
        .\counter_reg[1]_2 (FND_Controller_ip_v1_0_S00_AXI_inst_n_42),
        .\counter_reg[1]_3 (FND_Controller_ip_v1_0_S00_AXI_inst_n_43),
        .\counter_reg[1]_4 (FND_Controller_ip_v1_0_S00_AXI_inst_n_44),
        .i(i),
        .o_digit_10000__17_carry__1({U_fndController_n_4,U_fndController_n_5}),
        .o_digit_10000__45_carry({U_fndController_n_6,U_fndController_n_7,U_fndController_n_8}),
        .o_digit_10000__45_carry__0({U_fndController_n_9,U_fndController_n_10,U_fndController_n_11,U_fndController_n_12}),
        .o_digit_10000__45_carry__1({U_fndController_n_13,U_fndController_n_14,U_fndController_n_15,U_fndController_n_16}),
        .\o_digit_1000_inferred__0/i___75_carry ({U_fndController_n_17,U_fndController_n_18}),
        .\o_digit_1000_inferred__0/i___75_carry_0 (U_fndController_n_19),
        .\o_digit_1000_inferred__0/i___75_carry__0 ({U_fndController_n_20,U_fndController_n_21,U_fndController_n_22,U_fndController_n_23}),
        .\o_digit_1000_inferred__0/i___75_carry__1 ({U_fndController_n_24,U_fndController_n_25,U_fndController_n_26,U_fndController_n_27}),
        .\o_digit_1000_inferred__0/i___75_carry__1_0 (U_fndController_n_28),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg2_reg[10]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_45,FND_Controller_ip_v1_0_S00_AXI_inst_n_46,FND_Controller_ip_v1_0_S00_AXI_inst_n_47}),
        .\slv_reg2_reg[10]_1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_65,FND_Controller_ip_v1_0_S00_AXI_inst_n_66,FND_Controller_ip_v1_0_S00_AXI_inst_n_67,FND_Controller_ip_v1_0_S00_AXI_inst_n_68}),
        .\slv_reg2_reg[10]_2 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_88,FND_Controller_ip_v1_0_S00_AXI_inst_n_89,FND_Controller_ip_v1_0_S00_AXI_inst_n_90,FND_Controller_ip_v1_0_S00_AXI_inst_n_91}),
        .\slv_reg2_reg[11]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_22,FND_Controller_ip_v1_0_S00_AXI_inst_n_23}),
        .\slv_reg2_reg[11]_1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_80,FND_Controller_ip_v1_0_S00_AXI_inst_n_81,FND_Controller_ip_v1_0_S00_AXI_inst_n_82,FND_Controller_ip_v1_0_S00_AXI_inst_n_83}),
        .\slv_reg2_reg[12]_0 (FND_Controller_ip_v1_0_S00_AXI_inst_n_37),
        .\slv_reg2_reg[12]_1 (FND_Controller_ip_v1_0_S00_AXI_inst_n_48),
        .\slv_reg2_reg[12]_2 (FND_Controller_ip_v1_0_S00_AXI_inst_n_64),
        .\slv_reg2_reg[12]_3 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_77,FND_Controller_ip_v1_0_S00_AXI_inst_n_78,FND_Controller_ip_v1_0_S00_AXI_inst_n_79}),
        .\slv_reg2_reg[12]_4 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_100,FND_Controller_ip_v1_0_S00_AXI_inst_n_101,FND_Controller_ip_v1_0_S00_AXI_inst_n_102,FND_Controller_ip_v1_0_S00_AXI_inst_n_103}),
        .\slv_reg2_reg[13]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_24,FND_Controller_ip_v1_0_S00_AXI_inst_n_25}),
        .\slv_reg2_reg[13]_1 (FND_Controller_ip_v1_0_S00_AXI_inst_n_49),
        .\slv_reg2_reg[13]_2 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_50,FND_Controller_ip_v1_0_S00_AXI_inst_n_51,FND_Controller_ip_v1_0_S00_AXI_inst_n_52}),
        .\slv_reg2_reg[13]_3 (FND_Controller_ip_v1_0_S00_AXI_inst_n_53),
        .\slv_reg2_reg[1]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_26,FND_Controller_ip_v1_0_S00_AXI_inst_n_27,FND_Controller_ip_v1_0_S00_AXI_inst_n_28}),
        .\slv_reg2_reg[1]_1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_29,FND_Controller_ip_v1_0_S00_AXI_inst_n_30,FND_Controller_ip_v1_0_S00_AXI_inst_n_31,FND_Controller_ip_v1_0_S00_AXI_inst_n_32}),
        .\slv_reg2_reg[2]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_58,FND_Controller_ip_v1_0_S00_AXI_inst_n_59}),
        .\slv_reg2_reg[3]_0 (o_digit_100),
        .\slv_reg2_reg[4]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_60,FND_Controller_ip_v1_0_S00_AXI_inst_n_61,FND_Controller_ip_v1_0_S00_AXI_inst_n_62,FND_Controller_ip_v1_0_S00_AXI_inst_n_63}),
        .\slv_reg2_reg[4]_1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_92,FND_Controller_ip_v1_0_S00_AXI_inst_n_93,FND_Controller_ip_v1_0_S00_AXI_inst_n_94,FND_Controller_ip_v1_0_S00_AXI_inst_n_95}),
        .\slv_reg2_reg[5]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_69,FND_Controller_ip_v1_0_S00_AXI_inst_n_70,FND_Controller_ip_v1_0_S00_AXI_inst_n_71,FND_Controller_ip_v1_0_S00_AXI_inst_n_72}),
        .\slv_reg2_reg[8]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_54,FND_Controller_ip_v1_0_S00_AXI_inst_n_55,FND_Controller_ip_v1_0_S00_AXI_inst_n_56,FND_Controller_ip_v1_0_S00_AXI_inst_n_57}),
        .\slv_reg2_reg[8]_1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_96,FND_Controller_ip_v1_0_S00_AXI_inst_n_97,FND_Controller_ip_v1_0_S00_AXI_inst_n_98,FND_Controller_ip_v1_0_S00_AXI_inst_n_99}),
        .\slv_reg2_reg[9]_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_73,FND_Controller_ip_v1_0_S00_AXI_inst_n_74,FND_Controller_ip_v1_0_S00_AXI_inst_n_75,FND_Controller_ip_v1_0_S00_AXI_inst_n_76}),
        .\slv_reg2_reg[9]_1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_84,FND_Controller_ip_v1_0_S00_AXI_inst_n_85,FND_Controller_ip_v1_0_S00_AXI_inst_n_86,FND_Controller_ip_v1_0_S00_AXI_inst_n_87}));
  design_1_FNDController_0_0_fndController U_fndController
       (.CO(U_fndController_n_3),
        .DI({FND_Controller_ip_v1_0_S00_AXI_inst_n_33,FND_Controller_ip_v1_0_S00_AXI_inst_n_34,FND_Controller_ip_v1_0_S00_AXI_inst_n_35,FND_Controller_ip_v1_0_S00_AXI_inst_n_36}),
        .O({U_fndController_n_0,U_fndController_n_1,U_fndController_n_2}),
        .Q(w_digit),
        .S({FND_Controller_ip_v1_0_S00_AXI_inst_n_5,FND_Controller_ip_v1_0_S00_AXI_inst_n_6,FND_Controller_ip_v1_0_S00_AXI_inst_n_7}),
        .fndCom(fndCom),
        .fndFont(fndFont),
        .\fndFont[0]_0 (FND_Controller_ip_v1_0_S00_AXI_inst_n_44),
        .\fndFont[6]_0 (FND_Controller_ip_v1_0_S00_AXI_inst_n_39),
        .\fndFont[6]_1 (FND_Controller_ip_v1_0_S00_AXI_inst_n_41),
        .\fndFont[6]_2 (FND_Controller_ip_v1_0_S00_AXI_inst_n_42),
        .\fndFont[6]_3 (o_digit_100),
        .\fndFont[6]_INST_0_i_19 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_100,FND_Controller_ip_v1_0_S00_AXI_inst_n_101,FND_Controller_ip_v1_0_S00_AXI_inst_n_102,FND_Controller_ip_v1_0_S00_AXI_inst_n_103}),
        .\fndFont[6]_INST_0_i_30 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_77,FND_Controller_ip_v1_0_S00_AXI_inst_n_78,FND_Controller_ip_v1_0_S00_AXI_inst_n_79}),
        .fndFont_0_sp_1(FND_Controller_ip_v1_0_S00_AXI_inst_n_43),
        .fndFont_6_sp_1(FND_Controller_ip_v1_0_S00_AXI_inst_n_38),
        .i(i),
        .i___50_carry__0_i_8({U_fndController_n_24,U_fndController_n_25,U_fndController_n_26,U_fndController_n_27}),
        .i___50_carry__1_i_1(U_fndController_n_28),
        .i___50_carry_i_4(FND_Controller_ip_v1_0_S00_AXI_inst_n_48),
        .i___50_carry_i_4_0({FND_Controller_ip_v1_0_S00_AXI_inst_n_24,FND_Controller_ip_v1_0_S00_AXI_inst_n_25}),
        .i___50_carry_i_7({U_fndController_n_20,U_fndController_n_21,U_fndController_n_22,U_fndController_n_23}),
        .i___75_carry_i_4({FND_Controller_ip_v1_0_S00_AXI_inst_n_88,FND_Controller_ip_v1_0_S00_AXI_inst_n_89,FND_Controller_ip_v1_0_S00_AXI_inst_n_90,FND_Controller_ip_v1_0_S00_AXI_inst_n_91}),
        .i___75_carry_i_6({FND_Controller_ip_v1_0_S00_AXI_inst_n_54,FND_Controller_ip_v1_0_S00_AXI_inst_n_55,FND_Controller_ip_v1_0_S00_AXI_inst_n_56,FND_Controller_ip_v1_0_S00_AXI_inst_n_57}),
        .i___75_carry_i_6_0({FND_Controller_ip_v1_0_S00_AXI_inst_n_84,FND_Controller_ip_v1_0_S00_AXI_inst_n_85,FND_Controller_ip_v1_0_S00_AXI_inst_n_86,FND_Controller_ip_v1_0_S00_AXI_inst_n_87}),
        .o_digit_10000__17_carry__0_i_4({FND_Controller_ip_v1_0_S00_AXI_inst_n_45,FND_Controller_ip_v1_0_S00_AXI_inst_n_46,FND_Controller_ip_v1_0_S00_AXI_inst_n_47}),
        .o_digit_10000__17_carry__0_i_4_0({FND_Controller_ip_v1_0_S00_AXI_inst_n_65,FND_Controller_ip_v1_0_S00_AXI_inst_n_66,FND_Controller_ip_v1_0_S00_AXI_inst_n_67,FND_Controller_ip_v1_0_S00_AXI_inst_n_68}),
        .o_digit_10000__17_carry__1_i_2({FND_Controller_ip_v1_0_S00_AXI_inst_n_22,FND_Controller_ip_v1_0_S00_AXI_inst_n_23}),
        .o_digit_10000__45_carry__0({FND_Controller_ip_v1_0_S00_AXI_inst_n_69,FND_Controller_ip_v1_0_S00_AXI_inst_n_70,FND_Controller_ip_v1_0_S00_AXI_inst_n_71,FND_Controller_ip_v1_0_S00_AXI_inst_n_72}),
        .o_digit_10000__45_carry__0_i_8(FND_Controller_ip_v1_0_S00_AXI_inst_n_53),
        .o_digit_10000__45_carry__1({FND_Controller_ip_v1_0_S00_AXI_inst_n_73,FND_Controller_ip_v1_0_S00_AXI_inst_n_74,FND_Controller_ip_v1_0_S00_AXI_inst_n_75,FND_Controller_ip_v1_0_S00_AXI_inst_n_76}),
        .o_digit_10000__45_carry__1_i_6({FND_Controller_ip_v1_0_S00_AXI_inst_n_50,FND_Controller_ip_v1_0_S00_AXI_inst_n_51,FND_Controller_ip_v1_0_S00_AXI_inst_n_52}),
        .o_digit_10000__45_carry__1_i_6_0(FND_Controller_ip_v1_0_S00_AXI_inst_n_49),
        .o_digit_10000__45_carry_i_6(FND_Controller_ip_v1_0_S00_AXI_inst_n_37),
        .o_digit_10000__45_carry_i_6_0(FND_Controller_ip_v1_0_S00_AXI_inst_n_64),
        .\o_digit_1000_inferred__0/i___1_carry__0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_26,FND_Controller_ip_v1_0_S00_AXI_inst_n_27,FND_Controller_ip_v1_0_S00_AXI_inst_n_28}),
        .\o_digit_1000_inferred__0/i___1_carry__1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_58,FND_Controller_ip_v1_0_S00_AXI_inst_n_59}),
        .\o_digit_1000_inferred__0/i___1_carry__1_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_29,FND_Controller_ip_v1_0_S00_AXI_inst_n_30,FND_Controller_ip_v1_0_S00_AXI_inst_n_31,FND_Controller_ip_v1_0_S00_AXI_inst_n_32}),
        .\o_digit_1000_inferred__0/i___1_carry__2 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_60,FND_Controller_ip_v1_0_S00_AXI_inst_n_61,FND_Controller_ip_v1_0_S00_AXI_inst_n_62,FND_Controller_ip_v1_0_S00_AXI_inst_n_63}),
        .\o_digit_1000_inferred__0/i___1_carry__2_0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_80,FND_Controller_ip_v1_0_S00_AXI_inst_n_81,FND_Controller_ip_v1_0_S00_AXI_inst_n_82,FND_Controller_ip_v1_0_S00_AXI_inst_n_83}),
        .\o_digit_1000_inferred__0/i___75_carry__0 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_92,FND_Controller_ip_v1_0_S00_AXI_inst_n_93,FND_Controller_ip_v1_0_S00_AXI_inst_n_94,FND_Controller_ip_v1_0_S00_AXI_inst_n_95}),
        .\o_digit_1000_inferred__0/i___75_carry__1 ({FND_Controller_ip_v1_0_S00_AXI_inst_n_96,FND_Controller_ip_v1_0_S00_AXI_inst_n_97,FND_Controller_ip_v1_0_S00_AXI_inst_n_98,FND_Controller_ip_v1_0_S00_AXI_inst_n_99}),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg2_reg[10] (U_fndController_n_19),
        .\slv_reg2_reg[11] ({U_fndController_n_6,U_fndController_n_7,U_fndController_n_8}),
        .\slv_reg2_reg[11]_0 ({U_fndController_n_9,U_fndController_n_10,U_fndController_n_11,U_fndController_n_12}),
        .\slv_reg2_reg[12] ({U_fndController_n_4,U_fndController_n_5}),
        .\slv_reg2_reg[13] ({U_fndController_n_13,U_fndController_n_14,U_fndController_n_15,U_fndController_n_16}),
        .\slv_reg2_reg[8] ({U_fndController_n_17,U_fndController_n_18}));
endmodule

(* ORIG_REF_NAME = "FND_Controller_ip_v1_0_S00_AXI" *) 
module design_1_FNDController_0_0_FND_Controller_ip_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    S,
    Q,
    \slv_reg2_reg[11]_0 ,
    \slv_reg2_reg[13]_0 ,
    \slv_reg2_reg[1]_0 ,
    \slv_reg2_reg[1]_1 ,
    DI,
    \slv_reg2_reg[12]_0 ,
    \counter_reg[1] ,
    \counter_reg[1]_0 ,
    \slv_reg2_reg[3]_0 ,
    \counter_reg[1]_1 ,
    \counter_reg[1]_2 ,
    \counter_reg[1]_3 ,
    \counter_reg[1]_4 ,
    \slv_reg2_reg[10]_0 ,
    \slv_reg2_reg[12]_1 ,
    \slv_reg2_reg[13]_1 ,
    \slv_reg2_reg[13]_2 ,
    \slv_reg2_reg[13]_3 ,
    \slv_reg2_reg[8]_0 ,
    \slv_reg2_reg[2]_0 ,
    \slv_reg2_reg[4]_0 ,
    \slv_reg2_reg[12]_2 ,
    \slv_reg2_reg[10]_1 ,
    \slv_reg2_reg[5]_0 ,
    \slv_reg2_reg[9]_0 ,
    \slv_reg2_reg[12]_3 ,
    \slv_reg2_reg[11]_1 ,
    \slv_reg2_reg[9]_1 ,
    \slv_reg2_reg[10]_2 ,
    \slv_reg2_reg[4]_1 ,
    \slv_reg2_reg[8]_1 ,
    \slv_reg2_reg[12]_4 ,
    s00_axi_rdata,
    s00_axi_aclk,
    O,
    i,
    CO,
    o_digit_10000__17_carry__1,
    o_digit_10000__45_carry,
    o_digit_10000__45_carry__0,
    o_digit_10000__45_carry__1,
    \o_digit_1000_inferred__0/i___75_carry ,
    \o_digit_1000_inferred__0/i___75_carry_0 ,
    \o_digit_1000_inferred__0/i___75_carry__0 ,
    \o_digit_1000_inferred__0/i___75_carry__1 ,
    \o_digit_1000_inferred__0/i___75_carry__1_0 ,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [2:0]S;
  output [13:0]Q;
  output [1:0]\slv_reg2_reg[11]_0 ;
  output [1:0]\slv_reg2_reg[13]_0 ;
  output [2:0]\slv_reg2_reg[1]_0 ;
  output [3:0]\slv_reg2_reg[1]_1 ;
  output [3:0]DI;
  output [0:0]\slv_reg2_reg[12]_0 ;
  output \counter_reg[1] ;
  output \counter_reg[1]_0 ;
  output [0:0]\slv_reg2_reg[3]_0 ;
  output \counter_reg[1]_1 ;
  output \counter_reg[1]_2 ;
  output \counter_reg[1]_3 ;
  output \counter_reg[1]_4 ;
  output [2:0]\slv_reg2_reg[10]_0 ;
  output [0:0]\slv_reg2_reg[12]_1 ;
  output [0:0]\slv_reg2_reg[13]_1 ;
  output [2:0]\slv_reg2_reg[13]_2 ;
  output [0:0]\slv_reg2_reg[13]_3 ;
  output [3:0]\slv_reg2_reg[8]_0 ;
  output [1:0]\slv_reg2_reg[2]_0 ;
  output [3:0]\slv_reg2_reg[4]_0 ;
  output [0:0]\slv_reg2_reg[12]_2 ;
  output [3:0]\slv_reg2_reg[10]_1 ;
  output [3:0]\slv_reg2_reg[5]_0 ;
  output [3:0]\slv_reg2_reg[9]_0 ;
  output [2:0]\slv_reg2_reg[12]_3 ;
  output [3:0]\slv_reg2_reg[11]_1 ;
  output [3:0]\slv_reg2_reg[9]_1 ;
  output [3:0]\slv_reg2_reg[10]_2 ;
  output [3:0]\slv_reg2_reg[4]_1 ;
  output [3:0]\slv_reg2_reg[8]_1 ;
  output [3:0]\slv_reg2_reg[12]_4 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [2:0]O;
  input [1:0]i;
  input [0:0]CO;
  input [1:0]o_digit_10000__17_carry__1;
  input [2:0]o_digit_10000__45_carry;
  input [3:0]o_digit_10000__45_carry__0;
  input [3:0]o_digit_10000__45_carry__1;
  input [1:0]\o_digit_1000_inferred__0/i___75_carry ;
  input [0:0]\o_digit_1000_inferred__0/i___75_carry_0 ;
  input [3:0]\o_digit_1000_inferred__0/i___75_carry__0 ;
  input [3:0]\o_digit_1000_inferred__0/i___75_carry__1 ;
  input [0:0]\o_digit_1000_inferred__0/i___75_carry__1_0 ;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]O;
  wire [13:0]Q;
  wire [2:0]S;
  wire [10:1]\U_fndController/o_digit_100 ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire \counter_reg[1] ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg[1]_1 ;
  wire \counter_reg[1]_2 ;
  wire \counter_reg[1]_3 ;
  wire \counter_reg[1]_4 ;
  wire \fndFont[6]_INST_0_i_26_n_0 ;
  wire \fndFont[6]_INST_0_i_27_n_0 ;
  wire \fndFont[6]_INST_0_i_28_n_0 ;
  wire \fndFont[6]_INST_0_i_29_n_0 ;
  wire \fndFont[6]_INST_0_i_36_n_0 ;
  wire \fndFont[6]_INST_0_i_37_n_0 ;
  wire \fndFont[6]_INST_0_i_38_n_0 ;
  wire \fndFont[6]_INST_0_i_39_n_0 ;
  wire \fndFont[6]_INST_0_i_41_n_0 ;
  wire \fndFont[6]_INST_0_i_49_n_0 ;
  wire \fndFont[6]_INST_0_i_50_n_0 ;
  wire \fndFont[6]_INST_0_i_52_n_0 ;
  wire \fndFont[6]_INST_0_i_53_n_0 ;
  wire \fndFont[6]_INST_0_i_54_n_0 ;
  wire \fndFont[6]_INST_0_i_56_n_0 ;
  wire \fndFont[6]_INST_0_i_57_n_0 ;
  wire \fndFont[6]_INST_0_i_60_n_0 ;
  wire \fndFont[6]_INST_0_i_62_n_0 ;
  wire \fndFont[6]_INST_0_i_63_n_0 ;
  wire \fndFont[6]_INST_0_i_64_n_0 ;
  wire \fndFont[6]_INST_0_i_65_n_0 ;
  wire \fndFont[6]_INST_0_i_66_n_0 ;
  wire \fndFont[6]_INST_0_i_72_n_0 ;
  wire \fndFont[6]_INST_0_i_73_n_0 ;
  wire [1:0]i;
  wire i___1_carry__1_i_10_n_0;
  wire i___1_carry__1_i_11_n_0;
  wire i___1_carry__1_i_12_n_0;
  wire i___1_carry__1_i_13_n_0;
  wire i___1_carry__1_i_14_n_0;
  wire i___1_carry__1_i_9_n_0;
  wire i___1_carry__2_i_10_n_0;
  wire i___1_carry__2_i_11_n_0;
  wire i___1_carry__2_i_12_n_0;
  wire i___1_carry__2_i_13_n_0;
  wire i___1_carry__2_i_14_n_0;
  wire i___1_carry__2_i_9_n_0;
  wire [1:0]o_digit_10000__17_carry__1;
  wire [2:0]o_digit_10000__45_carry;
  wire [3:0]o_digit_10000__45_carry__0;
  wire [3:0]o_digit_10000__45_carry__1;
  wire [1:0]\o_digit_1000_inferred__0/i___75_carry ;
  wire [0:0]\o_digit_1000_inferred__0/i___75_carry_0 ;
  wire [3:0]\o_digit_1000_inferred__0/i___75_carry__0 ;
  wire [3:0]\o_digit_1000_inferred__0/i___75_carry__1 ;
  wire [0:0]\o_digit_1000_inferred__0/i___75_carry__1_0 ;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:14]slv_reg2;
  wire [2:0]\slv_reg2_reg[10]_0 ;
  wire [3:0]\slv_reg2_reg[10]_1 ;
  wire [3:0]\slv_reg2_reg[10]_2 ;
  wire [1:0]\slv_reg2_reg[11]_0 ;
  wire [3:0]\slv_reg2_reg[11]_1 ;
  wire [0:0]\slv_reg2_reg[12]_0 ;
  wire [0:0]\slv_reg2_reg[12]_1 ;
  wire [0:0]\slv_reg2_reg[12]_2 ;
  wire [2:0]\slv_reg2_reg[12]_3 ;
  wire [3:0]\slv_reg2_reg[12]_4 ;
  wire [1:0]\slv_reg2_reg[13]_0 ;
  wire [0:0]\slv_reg2_reg[13]_1 ;
  wire [2:0]\slv_reg2_reg[13]_2 ;
  wire [0:0]\slv_reg2_reg[13]_3 ;
  wire [2:0]\slv_reg2_reg[1]_0 ;
  wire [3:0]\slv_reg2_reg[1]_1 ;
  wire [1:0]\slv_reg2_reg[2]_0 ;
  wire [0:0]\slv_reg2_reg[3]_0 ;
  wire [3:0]\slv_reg2_reg[4]_0 ;
  wire [3:0]\slv_reg2_reg[4]_1 ;
  wire [3:0]\slv_reg2_reg[5]_0 ;
  wire [3:0]\slv_reg2_reg[8]_0 ;
  wire [3:0]\slv_reg2_reg[8]_1 ;
  wire [3:0]\slv_reg2_reg[9]_0 ;
  wire [3:0]\slv_reg2_reg[9]_1 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(slv_reg3[0]),
        .I2(slv_reg0[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(slv_reg3[10]),
        .I2(slv_reg0[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(slv_reg3[11]),
        .I2(slv_reg0[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(slv_reg3[12]),
        .I2(slv_reg0[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(slv_reg3[13]),
        .I2(slv_reg0[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(slv_reg3[14]),
        .I2(slv_reg0[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(slv_reg3[15]),
        .I2(slv_reg0[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(slv_reg3[16]),
        .I2(slv_reg0[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(slv_reg3[17]),
        .I2(slv_reg0[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(slv_reg3[18]),
        .I2(slv_reg0[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(slv_reg3[19]),
        .I2(slv_reg0[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(slv_reg3[1]),
        .I2(slv_reg0[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg2[20]),
        .I1(slv_reg3[20]),
        .I2(slv_reg0[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg2[21]),
        .I1(slv_reg3[21]),
        .I2(slv_reg0[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg2[22]),
        .I1(slv_reg3[22]),
        .I2(slv_reg0[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg2[23]),
        .I1(slv_reg3[23]),
        .I2(slv_reg0[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg2[24]),
        .I1(slv_reg3[24]),
        .I2(slv_reg0[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg2[25]),
        .I1(slv_reg3[25]),
        .I2(slv_reg0[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg2[26]),
        .I1(slv_reg3[26]),
        .I2(slv_reg0[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(slv_reg3[27]),
        .I2(slv_reg0[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg2[28]),
        .I1(slv_reg3[28]),
        .I2(slv_reg0[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg2[29]),
        .I1(slv_reg3[29]),
        .I2(slv_reg0[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(slv_reg3[2]),
        .I2(slv_reg0[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg2[30]),
        .I1(slv_reg3[30]),
        .I2(slv_reg0[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg2[31]),
        .I1(slv_reg3[31]),
        .I2(slv_reg0[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(slv_reg3[3]),
        .I2(slv_reg0[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(slv_reg3[4]),
        .I2(slv_reg0[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(slv_reg3[5]),
        .I2(slv_reg0[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(slv_reg3[6]),
        .I2(slv_reg0[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(slv_reg3[7]),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(slv_reg3[8]),
        .I2(slv_reg0[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(slv_reg3[9]),
        .I2(slv_reg0[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h000088880000F000)) 
    \fndFont[6]_INST_0_i_10 
       (.I0(\fndFont[6]_INST_0_i_36_n_0 ),
        .I1(\fndFont[6]_INST_0_i_37_n_0 ),
        .I2(\fndFont[6]_INST_0_i_38_n_0 ),
        .I3(\fndFont[6]_INST_0_i_39_n_0 ),
        .I4(i[1]),
        .I5(i[0]),
        .O(\counter_reg[1] ));
  LUT6 #(
    .INIT(64'h001100000011000F)) 
    \fndFont[6]_INST_0_i_13 
       (.I0(\fndFont[6]_INST_0_i_36_n_0 ),
        .I1(\fndFont[6]_INST_0_i_37_n_0 ),
        .I2(\fndFont[6]_INST_0_i_38_n_0 ),
        .I3(i[1]),
        .I4(i[0]),
        .I5(\fndFont[6]_INST_0_i_39_n_0 ),
        .O(\counter_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \fndFont[6]_INST_0_i_17 
       (.I0(\fndFont[6]_INST_0_i_41_n_0 ),
        .I1(Q[3]),
        .I2(\U_fndController/o_digit_100 [2]),
        .I3(\U_fndController/o_digit_100 [1]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\slv_reg2_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0044000F00440000)) 
    \fndFont[6]_INST_0_i_20 
       (.I0(\fndFont[6]_INST_0_i_49_n_0 ),
        .I1(\U_fndController/o_digit_100 [1]),
        .I2(\slv_reg2_reg[3]_0 ),
        .I3(i[1]),
        .I4(i[0]),
        .I5(Q[1]),
        .O(\counter_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00220000002200F0)) 
    \fndFont[6]_INST_0_i_23 
       (.I0(\fndFont[6]_INST_0_i_49_n_0 ),
        .I1(\U_fndController/o_digit_100 [1]),
        .I2(\slv_reg2_reg[3]_0 ),
        .I3(i[1]),
        .I4(i[0]),
        .I5(Q[1]),
        .O(\counter_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h7FF3FD3F4FD33077)) 
    \fndFont[6]_INST_0_i_26 
       (.I0(\U_fndController/o_digit_100 [1]),
        .I1(\fndFont[6]_INST_0_i_50_n_0 ),
        .I2(\U_fndController/o_digit_100 [3]),
        .I3(\U_fndController/o_digit_100 [2]),
        .I4(\fndFont[6]_INST_0_i_52_n_0 ),
        .I5(\fndFont[6]_INST_0_i_53_n_0 ),
        .O(\fndFont[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF108508F0EF5EF70)) 
    \fndFont[6]_INST_0_i_27 
       (.I0(\fndFont[6]_INST_0_i_53_n_0 ),
        .I1(\fndFont[6]_INST_0_i_50_n_0 ),
        .I2(\U_fndController/o_digit_100 [1]),
        .I3(\fndFont[6]_INST_0_i_52_n_0 ),
        .I4(\U_fndController/o_digit_100 [2]),
        .I5(\U_fndController/o_digit_100 [3]),
        .O(\fndFont[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h75A1A1F1F1FFFF75)) 
    \fndFont[6]_INST_0_i_28 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\U_fndController/o_digit_100 [1]),
        .I3(\U_fndController/o_digit_100 [2]),
        .I4(Q[3]),
        .I5(\fndFont[6]_INST_0_i_41_n_0 ),
        .O(\fndFont[6]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD24B2DB4)) 
    \fndFont[6]_INST_0_i_29 
       (.I0(\U_fndController/o_digit_100 [1]),
        .I1(Q[1]),
        .I2(\U_fndController/o_digit_100 [2]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\fndFont[6]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C22B8CB)) 
    \fndFont[6]_INST_0_i_36 
       (.I0(\fndFont[6]_INST_0_i_53_n_0 ),
        .I1(\fndFont[6]_INST_0_i_52_n_0 ),
        .I2(\U_fndController/o_digit_100 [2]),
        .I3(\U_fndController/o_digit_100 [3]),
        .I4(\fndFont[6]_INST_0_i_50_n_0 ),
        .I5(\U_fndController/o_digit_100 [1]),
        .O(\fndFont[6]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h55AA65996659AA55)) 
    \fndFont[6]_INST_0_i_37 
       (.I0(\U_fndController/o_digit_100 [1]),
        .I1(\fndFont[6]_INST_0_i_50_n_0 ),
        .I2(\U_fndController/o_digit_100 [3]),
        .I3(\U_fndController/o_digit_100 [2]),
        .I4(\fndFont[6]_INST_0_i_52_n_0 ),
        .I5(\fndFont[6]_INST_0_i_53_n_0 ),
        .O(\fndFont[6]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF500CCEE5)) 
    \fndFont[6]_INST_0_i_38 
       (.I0(Q[2]),
        .I1(\U_fndController/o_digit_100 [1]),
        .I2(\U_fndController/o_digit_100 [2]),
        .I3(Q[3]),
        .I4(\fndFont[6]_INST_0_i_41_n_0 ),
        .I5(Q[1]),
        .O(\fndFont[6]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fndFont[6]_INST_0_i_39 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\U_fndController/o_digit_100 [1]),
        .O(\fndFont[6]_INST_0_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fndFont[6]_INST_0_i_41 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(\U_fndController/o_digit_100 [3]),
        .O(\fndFont[6]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \fndFont[6]_INST_0_i_42 
       (.I0(\fndFont[6]_INST_0_i_54_n_0 ),
        .I1(Q[5]),
        .I2(\U_fndController/o_digit_100 [4]),
        .I3(\U_fndController/o_digit_100 [3]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\U_fndController/o_digit_100 [2]));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \fndFont[6]_INST_0_i_43 
       (.I0(\fndFont[6]_INST_0_i_56_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\U_fndController/o_digit_100 [3]),
        .I4(\fndFont[6]_INST_0_i_57_n_0 ),
        .I5(Q[2]),
        .O(\U_fndController/o_digit_100 [1]));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \fndFont[6]_INST_0_i_49 
       (.I0(\fndFont[6]_INST_0_i_50_n_0 ),
        .I1(\U_fndController/o_digit_100 [3]),
        .I2(\U_fndController/o_digit_100 [2]),
        .I3(\fndFont[6]_INST_0_i_52_n_0 ),
        .I4(\fndFont[6]_INST_0_i_53_n_0 ),
        .I5(\U_fndController/o_digit_100 [1]),
        .O(\fndFont[6]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h000088880000F000)) 
    \fndFont[6]_INST_0_i_5 
       (.I0(\fndFont[6]_INST_0_i_26_n_0 ),
        .I1(\fndFont[6]_INST_0_i_27_n_0 ),
        .I2(\fndFont[6]_INST_0_i_28_n_0 ),
        .I3(\fndFont[6]_INST_0_i_29_n_0 ),
        .I4(i[1]),
        .I5(i[0]),
        .O(\counter_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h55AA65996659AA55)) 
    \fndFont[6]_INST_0_i_50 
       (.I0(\U_fndController/o_digit_100 [3]),
        .I1(\fndFont[6]_INST_0_i_60_n_0 ),
        .I2(\U_fndController/o_digit_100 [5]),
        .I3(\U_fndController/o_digit_100 [4]),
        .I4(\fndFont[6]_INST_0_i_62_n_0 ),
        .I5(\fndFont[6]_INST_0_i_63_n_0 ),
        .O(\fndFont[6]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \fndFont[6]_INST_0_i_51 
       (.I0(\fndFont[6]_INST_0_i_64_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\U_fndController/o_digit_100 [5]),
        .I4(\fndFont[6]_INST_0_i_65_n_0 ),
        .I5(Q[4]),
        .O(\U_fndController/o_digit_100 [3]));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \fndFont[6]_INST_0_i_52 
       (.I0(\fndFont[6]_INST_0_i_60_n_0 ),
        .I1(\U_fndController/o_digit_100 [5]),
        .I2(\U_fndController/o_digit_100 [4]),
        .I3(\fndFont[6]_INST_0_i_62_n_0 ),
        .I4(\fndFont[6]_INST_0_i_63_n_0 ),
        .I5(\U_fndController/o_digit_100 [3]),
        .O(\fndFont[6]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hF108508F0EF5EF70)) 
    \fndFont[6]_INST_0_i_53 
       (.I0(\fndFont[6]_INST_0_i_63_n_0 ),
        .I1(\fndFont[6]_INST_0_i_60_n_0 ),
        .I2(\U_fndController/o_digit_100 [3]),
        .I3(\fndFont[6]_INST_0_i_62_n_0 ),
        .I4(\U_fndController/o_digit_100 [4]),
        .I5(\U_fndController/o_digit_100 [5]),
        .O(\fndFont[6]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fndFont[6]_INST_0_i_54 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(\U_fndController/o_digit_100 [5]),
        .O(\fndFont[6]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \fndFont[6]_INST_0_i_55 
       (.I0(\fndFont[6]_INST_0_i_66_n_0 ),
        .I1(Q[7]),
        .I2(\U_fndController/o_digit_100 [6]),
        .I3(\U_fndController/o_digit_100 [5]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\U_fndController/o_digit_100 [4]));
  LUT6 #(
    .INIT(64'h55AA65996659AA55)) 
    \fndFont[6]_INST_0_i_56 
       (.I0(Q[4]),
        .I1(\fndFont[6]_INST_0_i_64_n_0 ),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\U_fndController/o_digit_100 [5]),
        .I5(\fndFont[6]_INST_0_i_65_n_0 ),
        .O(\fndFont[6]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hF1080EF5508FEF70)) 
    \fndFont[6]_INST_0_i_57 
       (.I0(\fndFont[6]_INST_0_i_65_n_0 ),
        .I1(\fndFont[6]_INST_0_i_64_n_0 ),
        .I2(Q[4]),
        .I3(\U_fndController/o_digit_100 [5]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\fndFont[6]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h9569966969569569)) 
    \fndFont[6]_INST_0_i_60 
       (.I0(\U_fndController/o_digit_100 [5]),
        .I1(\U_fndController/o_digit_100 [6]),
        .I2(\U_fndController/o_digit_100 [10]),
        .I3(\U_fndController/o_digit_100 [8]),
        .I4(\U_fndController/o_digit_100 [9]),
        .I5(\U_fndController/o_digit_100 [7]),
        .O(\fndFont[6]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \fndFont[6]_INST_0_i_61 
       (.I0(\fndFont[6]_INST_0_i_72_n_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(\U_fndController/o_digit_100 [7]),
        .I4(\fndFont[6]_INST_0_i_73_n_0 ),
        .I5(Q[6]),
        .O(\U_fndController/o_digit_100 [5]));
  LUT6 #(
    .INIT(64'h18EFF718108EE710)) 
    \fndFont[6]_INST_0_i_62 
       (.I0(\U_fndController/o_digit_100 [6]),
        .I1(\U_fndController/o_digit_100 [10]),
        .I2(\U_fndController/o_digit_100 [8]),
        .I3(\U_fndController/o_digit_100 [9]),
        .I4(\U_fndController/o_digit_100 [7]),
        .I5(\U_fndController/o_digit_100 [5]),
        .O(\fndFont[6]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hE7188AE7AE7118AE)) 
    \fndFont[6]_INST_0_i_63 
       (.I0(\U_fndController/o_digit_100 [5]),
        .I1(\U_fndController/o_digit_100 [10]),
        .I2(\U_fndController/o_digit_100 [8]),
        .I3(\U_fndController/o_digit_100 [9]),
        .I4(\U_fndController/o_digit_100 [7]),
        .I5(\U_fndController/o_digit_100 [6]),
        .O(\fndFont[6]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h55AA65996659AA55)) 
    \fndFont[6]_INST_0_i_64 
       (.I0(Q[6]),
        .I1(\fndFont[6]_INST_0_i_72_n_0 ),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(\U_fndController/o_digit_100 [7]),
        .I5(\fndFont[6]_INST_0_i_73_n_0 ),
        .O(\fndFont[6]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hF1080EF5508FEF70)) 
    \fndFont[6]_INST_0_i_65 
       (.I0(\fndFont[6]_INST_0_i_73_n_0 ),
        .I1(\fndFont[6]_INST_0_i_72_n_0 ),
        .I2(Q[6]),
        .I3(\U_fndController/o_digit_100 [7]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(\fndFont[6]_INST_0_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fndFont[6]_INST_0_i_66 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(\U_fndController/o_digit_100 [7]),
        .O(\fndFont[6]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h88EEEAA8EAA888EE)) 
    \fndFont[6]_INST_0_i_67 
       (.I0(\fndFont[6]_INST_0_i_73_n_0 ),
        .I1(\U_fndController/o_digit_100 [7]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(\U_fndController/o_digit_100 [8]),
        .I5(Q[9]),
        .O(\U_fndController/o_digit_100 [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \fndFont[6]_INST_0_i_68 
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(Q[13]),
        .O(\U_fndController/o_digit_100 [10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4FB44B24)) 
    \fndFont[6]_INST_0_i_69 
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(Q[11]),
        .I3(Q[13]),
        .I4(Q[9]),
        .O(\U_fndController/o_digit_100 [8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD242)) 
    \fndFont[6]_INST_0_i_70 
       (.I0(Q[13]),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[10]),
        .O(\U_fndController/o_digit_100 [9]));
  LUT6 #(
    .INIT(64'h18EFF718108EE710)) 
    \fndFont[6]_INST_0_i_71 
       (.I0(Q[9]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(Q[12]),
        .I4(Q[10]),
        .I5(Q[8]),
        .O(\U_fndController/o_digit_100 [7]));
  LUT6 #(
    .INIT(64'h9569966969569569)) 
    \fndFont[6]_INST_0_i_72 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[13]),
        .I3(Q[11]),
        .I4(Q[12]),
        .I5(Q[10]),
        .O(\fndFont[6]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hE7188AE7AE7118AE)) 
    \fndFont[6]_INST_0_i_73 
       (.I0(Q[8]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(Q[12]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\fndFont[6]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h001100000011000F)) 
    \fndFont[6]_INST_0_i_8 
       (.I0(\fndFont[6]_INST_0_i_26_n_0 ),
        .I1(\fndFont[6]_INST_0_i_27_n_0 ),
        .I2(\fndFont[6]_INST_0_i_28_n_0 ),
        .I3(i[1]),
        .I4(i[0]),
        .I5(\fndFont[6]_INST_0_i_29_n_0 ),
        .O(\counter_reg[1]_4 ));
  LUT4 #(
    .INIT(16'h9669)) 
    i___1_carry__0_i_1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[7]),
        .I3(Q[5]),
        .O(\slv_reg2_reg[2]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__0_i_2
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[1]),
        .O(\slv_reg2_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'h65A6)) 
    i___1_carry__0_i_3
       (.I0(\slv_reg2_reg[2]_0 [1]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[4]),
        .O(\slv_reg2_reg[1]_1 [3]));
  LUT5 #(
    .INIT(32'h69966969)) 
    i___1_carry__0_i_4
       (.I0(Q[1]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[0]),
        .O(\slv_reg2_reg[1]_1 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__0_i_5
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[3]),
        .O(\slv_reg2_reg[1]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__0_i_6
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(\slv_reg2_reg[1]_1 [0]));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    i___1_carry__1_i_1
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(i___1_carry__1_i_9_n_0),
        .O(\slv_reg2_reg[4]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__1_i_10
       (.I0(Q[4]),
        .I1(Q[9]),
        .I2(Q[2]),
        .O(i___1_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__1_i_11
       (.I0(Q[3]),
        .I1(Q[8]),
        .I2(Q[1]),
        .O(i___1_carry__1_i_11_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___1_carry__1_i_12
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[5]),
        .O(i___1_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___1_carry__1_i_13
       (.I0(Q[9]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(i___1_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___1_carry__1_i_14
       (.I0(Q[8]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(i___1_carry__1_i_14_n_0));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    i___1_carry__1_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(i___1_carry__1_i_10_n_0),
        .O(\slv_reg2_reg[4]_0 [2]));
  LUT5 #(
    .INIT(32'hFFB2B200)) 
    i___1_carry__1_i_3
       (.I0(Q[2]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(Q[6]),
        .I4(i___1_carry__1_i_11_n_0),
        .O(\slv_reg2_reg[4]_0 [1]));
  LUT5 #(
    .INIT(32'hB24D4DB2)) 
    i___1_carry__1_i_4
       (.I0(Q[0]),
        .I1(Q[7]),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(i___1_carry__1_i_11_n_0),
        .O(\slv_reg2_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    i___1_carry__1_i_5
       (.I0(\slv_reg2_reg[4]_0 [3]),
        .I1(i___1_carry__1_i_12_n_0),
        .I2(Q[11]),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[9]),
        .O(\slv_reg2_reg[11]_1 [3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    i___1_carry__1_i_6
       (.I0(\slv_reg2_reg[4]_0 [2]),
        .I1(i___1_carry__1_i_13_n_0),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[10]),
        .I5(Q[8]),
        .O(\slv_reg2_reg[11]_1 [2]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    i___1_carry__1_i_7
       (.I0(\slv_reg2_reg[4]_0 [1]),
        .I1(i___1_carry__1_i_14_n_0),
        .I2(Q[2]),
        .I3(Q[9]),
        .I4(Q[4]),
        .I5(Q[7]),
        .O(\slv_reg2_reg[11]_1 [1]));
  LUT6 #(
    .INIT(64'h9969969996996696)) 
    i___1_carry__1_i_8
       (.I0(i___1_carry__1_i_11_n_0),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\slv_reg2_reg[11]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__1_i_9
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[5]),
        .O(i___1_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'hFF8E8E008E00FF8E)) 
    i___1_carry__2_i_1
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(Q[7]),
        .I5(Q[9]),
        .O(\slv_reg2_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__2_i_10
       (.I0(Q[12]),
        .I1(Q[5]),
        .I2(Q[7]),
        .O(i___1_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__2_i_11
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[11]),
        .O(i___1_carry__2_i_11_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___1_carry__2_i_12
       (.I0(Q[13]),
        .I1(Q[6]),
        .I2(Q[8]),
        .O(i___1_carry__2_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___1_carry__2_i_13
       (.I0(Q[12]),
        .I1(Q[5]),
        .I2(Q[7]),
        .O(i___1_carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___1_carry__2_i_14
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(Q[6]),
        .O(i___1_carry__2_i_14_n_0));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    i___1_carry__2_i_2
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[12]),
        .I3(Q[11]),
        .I4(i___1_carry__2_i_9_n_0),
        .O(\slv_reg2_reg[8]_0 [2]));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    i___1_carry__2_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(i___1_carry__2_i_10_n_0),
        .O(\slv_reg2_reg[8]_0 [1]));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    i___1_carry__2_i_4
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(i___1_carry__2_i_11_n_0),
        .O(\slv_reg2_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h56A9A956A95656A9)) 
    i___1_carry__2_i_5
       (.I0(\slv_reg2_reg[8]_0 [3]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[13]),
        .O(\slv_reg2_reg[9]_1 [3]));
  LUT5 #(
    .INIT(32'h69969669)) 
    i___1_carry__2_i_6
       (.I0(\slv_reg2_reg[8]_0 [2]),
        .I1(i___1_carry__2_i_12_n_0),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[12]),
        .O(\slv_reg2_reg[9]_1 [2]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    i___1_carry__2_i_7
       (.I0(\slv_reg2_reg[8]_0 [1]),
        .I1(i___1_carry__2_i_13_n_0),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[13]),
        .I5(Q[11]),
        .O(\slv_reg2_reg[9]_1 [1]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    i___1_carry__2_i_8
       (.I0(\slv_reg2_reg[8]_0 [0]),
        .I1(i___1_carry__2_i_14_n_0),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[12]),
        .I5(Q[10]),
        .O(\slv_reg2_reg[9]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h69)) 
    i___1_carry__2_i_9
       (.I0(Q[13]),
        .I1(Q[6]),
        .I2(Q[8]),
        .O(i___1_carry__2_i_9_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    i___1_carry__3_i_1
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(Q[11]),
        .I3(Q[13]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'hE00E)) 
    i___1_carry__3_i_2
       (.I0(Q[11]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[12]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'hE00E)) 
    i___1_carry__3_i_3
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[11]),
        .I3(Q[9]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hFEE0E0FE)) 
    i___1_carry__3_i_4
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[13]),
        .I3(Q[10]),
        .I4(Q[8]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h38F1)) 
    i___1_carry__3_i_5
       (.I0(Q[10]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(Q[11]),
        .O(\slv_reg2_reg[10]_2 [3]));
  LUT5 #(
    .INIT(32'hC63C3C39)) 
    i___1_carry__3_i_6
       (.I0(Q[9]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(Q[12]),
        .O(\slv_reg2_reg[10]_2 [2]));
  LUT5 #(
    .INIT(32'hC63C3C39)) 
    i___1_carry__3_i_7
       (.I0(Q[8]),
        .I1(Q[12]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[11]),
        .O(\slv_reg2_reg[10]_2 [1]));
  LUT6 #(
    .INIT(64'hF10EA758A7580EF1)) 
    i___1_carry__3_i_8
       (.I0(Q[13]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(Q[11]),
        .I4(Q[8]),
        .I5(Q[10]),
        .O(\slv_reg2_reg[10]_2 [0]));
  LUT3 #(
    .INIT(8'hFE)) 
    i___1_carry__4_i_1
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(Q[13]),
        .O(\slv_reg2_reg[12]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    i___1_carry__4_i_2
       (.I0(Q[13]),
        .O(\slv_reg2_reg[13]_0 [1]));
  LUT3 #(
    .INIT(8'hF1)) 
    i___1_carry__4_i_3
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(\slv_reg2_reg[13]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry_i_1
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(\slv_reg2_reg[1]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\slv_reg2_reg[1]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    i___1_carry_i_3
       (.I0(Q[1]),
        .O(\slv_reg2_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___75_carry__0_i_5
       (.I0(Q[8]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__0 [3]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__1 [0]),
        .I3(Q[9]),
        .O(\slv_reg2_reg[8]_1 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___75_carry__0_i_6
       (.I0(Q[7]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__0 [2]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__0 [3]),
        .I3(Q[8]),
        .O(\slv_reg2_reg[8]_1 [2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___75_carry__0_i_7
       (.I0(Q[6]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__0 [1]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__0 [2]),
        .I3(Q[7]),
        .O(\slv_reg2_reg[8]_1 [1]));
  LUT4 #(
    .INIT(16'hD22D)) 
    i___75_carry__0_i_8
       (.I0(Q[5]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__0 [0]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__0 [1]),
        .I3(Q[6]),
        .O(\slv_reg2_reg[8]_1 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___75_carry__1_i_5
       (.I0(Q[12]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__1 [3]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__1_0 ),
        .I3(Q[13]),
        .O(\slv_reg2_reg[12]_4 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___75_carry__1_i_6
       (.I0(Q[11]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__1 [2]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__1 [3]),
        .I3(Q[12]),
        .O(\slv_reg2_reg[12]_4 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___75_carry__1_i_7
       (.I0(Q[10]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__1 [1]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__1 [2]),
        .I3(Q[11]),
        .O(\slv_reg2_reg[12]_4 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___75_carry__1_i_8
       (.I0(Q[9]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__1 [0]),
        .I2(\o_digit_1000_inferred__0/i___75_carry__1 [1]),
        .I3(Q[10]),
        .O(\slv_reg2_reg[12]_4 [0]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    i___75_carry_i_4
       (.I0(Q[4]),
        .I1(\o_digit_1000_inferred__0/i___75_carry_0 ),
        .I2(\o_digit_1000_inferred__0/i___75_carry__0 [0]),
        .I3(Q[5]),
        .O(\slv_reg2_reg[4]_1 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___75_carry_i_5
       (.I0(Q[3]),
        .I1(\o_digit_1000_inferred__0/i___75_carry [1]),
        .I2(\o_digit_1000_inferred__0/i___75_carry_0 ),
        .I3(Q[4]),
        .O(\slv_reg2_reg[4]_1 [2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___75_carry_i_6
       (.I0(Q[2]),
        .I1(\o_digit_1000_inferred__0/i___75_carry [0]),
        .I2(\o_digit_1000_inferred__0/i___75_carry [1]),
        .I3(Q[3]),
        .O(\slv_reg2_reg[4]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i___75_carry_i_7
       (.I0(Q[2]),
        .I1(\o_digit_1000_inferred__0/i___75_carry [0]),
        .O(\slv_reg2_reg[4]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_digit_10000__17_carry__0_i_1
       (.I0(Q[13]),
        .I1(O[1]),
        .O(\slv_reg2_reg[13]_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    o_digit_10000__17_carry__0_i_3
       (.I0(Q[13]),
        .I1(O[1]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h4BFFB400)) 
    o_digit_10000__17_carry__0_i_4
       (.I0(Q[12]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[13]),
        .I4(O[0]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6696)) 
    o_digit_10000__17_carry__0_i_5
       (.I0(Q[13]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[12]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_digit_10000__17_carry__1_i_1
       (.I0(Q[13]),
        .I1(o_digit_10000__17_carry__1[1]),
        .O(\slv_reg2_reg[13]_2 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    o_digit_10000__17_carry__1_i_2
       (.I0(Q[13]),
        .I1(o_digit_10000__17_carry__1[0]),
        .O(\slv_reg2_reg[13]_2 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_digit_10000__17_carry__1_i_3
       (.I0(Q[13]),
        .I1(O[2]),
        .O(\slv_reg2_reg[13]_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_digit_10000__17_carry__1_i_4
       (.I0(Q[13]),
        .I1(CO),
        .O(\slv_reg2_reg[13]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    o_digit_10000__17_carry_i_1
       (.I0(Q[12]),
        .I1(Q[10]),
        .O(\slv_reg2_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    o_digit_10000__17_carry_i_2
       (.I0(Q[12]),
        .I1(Q[10]),
        .O(\slv_reg2_reg[12]_2 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    o_digit_10000__45_carry__0_i_5
       (.I0(Q[9]),
        .I1(o_digit_10000__45_carry__0[3]),
        .I2(o_digit_10000__45_carry__1[0]),
        .I3(Q[10]),
        .O(\slv_reg2_reg[9]_0 [3]));
  LUT4 #(
    .INIT(16'hD22D)) 
    o_digit_10000__45_carry__0_i_6
       (.I0(Q[8]),
        .I1(o_digit_10000__45_carry__0[2]),
        .I2(o_digit_10000__45_carry__0[3]),
        .I3(Q[9]),
        .O(\slv_reg2_reg[9]_0 [2]));
  LUT4 #(
    .INIT(16'hD22D)) 
    o_digit_10000__45_carry__0_i_7
       (.I0(Q[7]),
        .I1(o_digit_10000__45_carry__0[1]),
        .I2(o_digit_10000__45_carry__0[2]),
        .I3(Q[8]),
        .O(\slv_reg2_reg[9]_0 [1]));
  LUT4 #(
    .INIT(16'hD22D)) 
    o_digit_10000__45_carry__0_i_8
       (.I0(Q[6]),
        .I1(o_digit_10000__45_carry__0[0]),
        .I2(o_digit_10000__45_carry__0[1]),
        .I3(Q[7]),
        .O(\slv_reg2_reg[9]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    o_digit_10000__45_carry__1_i_4
       (.I0(Q[12]),
        .I1(o_digit_10000__45_carry__1[2]),
        .I2(o_digit_10000__45_carry__1[3]),
        .I3(Q[13]),
        .O(\slv_reg2_reg[12]_3 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    o_digit_10000__45_carry__1_i_5
       (.I0(Q[11]),
        .I1(o_digit_10000__45_carry__1[1]),
        .I2(o_digit_10000__45_carry__1[2]),
        .I3(Q[12]),
        .O(\slv_reg2_reg[12]_3 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    o_digit_10000__45_carry__1_i_6
       (.I0(Q[10]),
        .I1(o_digit_10000__45_carry__1[0]),
        .I2(o_digit_10000__45_carry__1[1]),
        .I3(Q[11]),
        .O(\slv_reg2_reg[12]_3 [0]));
  LUT4 #(
    .INIT(16'hD22D)) 
    o_digit_10000__45_carry_i_4
       (.I0(Q[5]),
        .I1(o_digit_10000__45_carry[2]),
        .I2(o_digit_10000__45_carry__0[0]),
        .I3(Q[6]),
        .O(\slv_reg2_reg[5]_0 [3]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    o_digit_10000__45_carry_i_5
       (.I0(Q[4]),
        .I1(o_digit_10000__45_carry[1]),
        .I2(o_digit_10000__45_carry[2]),
        .I3(Q[5]),
        .O(\slv_reg2_reg[5]_0 [2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    o_digit_10000__45_carry_i_6
       (.I0(Q[3]),
        .I1(o_digit_10000__45_carry[0]),
        .I2(o_digit_10000__45_carry[1]),
        .I3(Q[4]),
        .O(\slv_reg2_reg[5]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    o_digit_10000__45_carry_i_7
       (.I0(Q[3]),
        .I1(o_digit_10000__45_carry[0]),
        .O(\slv_reg2_reg[5]_0 [0]));
  LUT2 #(
    .INIT(4'h4)) 
    o_digit_10000_carry__0_i_1
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(\slv_reg2_reg[11]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    o_digit_10000_carry__0_i_2
       (.I0(\slv_reg2_reg[10]_0 [2]),
        .I1(Q[11]),
        .I2(Q[12]),
        .O(\slv_reg2_reg[11]_0 [0]));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_digit_10000_carry_i_1
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(Q[11]),
        .O(\slv_reg2_reg[10]_0 [2]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_digit_10000_carry_i_2
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(\slv_reg2_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    o_digit_10000_carry_i_3
       (.I0(Q[11]),
        .I1(Q[10]),
        .O(\slv_reg2_reg[10]_0 [0]));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_digit_10000_carry_i_4
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(Q[11]),
        .I3(\slv_reg2_reg[10]_0 [2]),
        .O(\slv_reg2_reg[10]_1 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    o_digit_10000_carry_i_5
       (.I0(\slv_reg2_reg[10]_0 [2]),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[10]),
        .O(\slv_reg2_reg[10]_1 [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    o_digit_10000_carry_i_6
       (.I0(\slv_reg2_reg[10]_0 [1]),
        .I1(Q[11]),
        .I2(Q[12]),
        .I3(Q[10]),
        .O(\slv_reg2_reg[10]_1 [1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    o_digit_10000_carry_i_7
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[12]),
        .O(\slv_reg2_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[13]),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "clkDiv" *) 
module design_1_FNDController_0_0_clkDiv
   (r_tick,
    s00_axi_aclk);
  output r_tick;
  input s00_axi_aclk;

  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire [16:0]counter_1;
  wire [16:1]data0;
  wire r_tick;
  wire r_tick_0;
  wire s00_axi_aclk;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .O(counter_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[10]),
        .O(counter_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[11]),
        .O(counter_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[12]),
        .O(counter_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[13]),
        .O(counter_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[14]),
        .O(counter_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[15]),
        .O(counter_1[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[16]),
        .O(counter_1[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \counter[16]_i_2 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[6]),
        .I3(counter[5]),
        .I4(\counter[16]_i_3_n_0 ),
        .I5(\counter[16]_i_4_n_0 ),
        .O(\counter[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter[16]_i_3 
       (.I0(counter[0]),
        .I1(counter[15]),
        .I2(counter[16]),
        .I3(counter[2]),
        .I4(counter[1]),
        .O(\counter[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \counter[16]_i_4 
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(counter[8]),
        .I3(counter[7]),
        .I4(\counter[16]_i_5_n_0 ),
        .O(\counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[16]_i_5 
       (.I0(counter[12]),
        .I1(counter[11]),
        .I2(counter[14]),
        .I3(counter[13]),
        .O(\counter[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[1]),
        .O(counter_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[2]),
        .O(counter_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[3]),
        .O(counter_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[4]),
        .O(counter_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[5]),
        .O(counter_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[6]),
        .O(counter_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[7]),
        .O(counter_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[8]),
        .O(counter_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(data0[9]),
        .O(counter_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[0]),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[10]),
        .Q(counter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[11]),
        .Q(counter[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[12]),
        .Q(counter[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[13]),
        .Q(counter[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[14]),
        .Q(counter[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[15]),
        .Q(counter[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[16]),
        .Q(counter[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[1]),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[2]),
        .Q(counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[3]),
        .Q(counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[4]),
        .Q(counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[5]),
        .Q(counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[6]),
        .Q(counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[7]),
        .Q(counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[8]),
        .Q(counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_1[9]),
        .Q(counter[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    r_tick_i_1
       (.I0(\counter[16]_i_2_n_0 ),
        .O(r_tick_0));
  FDRE #(
    .INIT(1'b0)) 
    r_tick_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_tick_0),
        .Q(r_tick),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_FNDController_0_0_counter
   (fndFont,
    \counter_reg[1]_0 ,
    \counter_reg[0]_0 ,
    \counter_reg[0]_1 ,
    fndCom,
    \counter_reg[1]_1 ,
    \fndFont[0] ,
    fndFont_6_sp_1,
    \fndFont[6]_0 ,
    \fndFont[6]_1 ,
    \fndFont[6]_2 ,
    \fndFont[6]_3 ,
    \fndFont[6]_4 ,
    \fndFont[6]_5 ,
    \fndFont[6]_6 ,
    \fndFont[6]_7 ,
    \fndFont[6]_8 ,
    \fndFont[6]_9 ,
    \fndFont[6]_INST_0_i_4_0 ,
    Q,
    \fndFont[6]_INST_0_i_3_0 ,
    r_tick);
  output [6:0]fndFont;
  output \counter_reg[1]_0 ;
  output \counter_reg[0]_0 ;
  output \counter_reg[0]_1 ;
  output [3:0]fndCom;
  output \counter_reg[1]_1 ;
  input [0:0]\fndFont[0] ;
  input fndFont_6_sp_1;
  input \fndFont[6]_0 ;
  input \fndFont[6]_1 ;
  input \fndFont[6]_2 ;
  input \fndFont[6]_3 ;
  input \fndFont[6]_4 ;
  input \fndFont[6]_5 ;
  input \fndFont[6]_6 ;
  input [0:0]\fndFont[6]_7 ;
  input \fndFont[6]_8 ;
  input \fndFont[6]_9 ;
  input \fndFont[6]_INST_0_i_4_0 ;
  input [4:0]Q;
  input \fndFont[6]_INST_0_i_3_0 ;
  input r_tick;

  wire [4:0]Q;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg[1]_1 ;
  wire [3:0]fndCom;
  wire [6:0]fndFont;
  wire [0:0]\fndFont[0] ;
  wire \fndFont[6]_0 ;
  wire \fndFont[6]_1 ;
  wire \fndFont[6]_2 ;
  wire \fndFont[6]_3 ;
  wire \fndFont[6]_4 ;
  wire \fndFont[6]_5 ;
  wire \fndFont[6]_6 ;
  wire [0:0]\fndFont[6]_7 ;
  wire \fndFont[6]_8 ;
  wire \fndFont[6]_9 ;
  wire \fndFont[6]_INST_0_i_11_n_0 ;
  wire \fndFont[6]_INST_0_i_14_n_0 ;
  wire \fndFont[6]_INST_0_i_16_n_0 ;
  wire \fndFont[6]_INST_0_i_21_n_0 ;
  wire \fndFont[6]_INST_0_i_24_n_0 ;
  wire \fndFont[6]_INST_0_i_3_0 ;
  wire \fndFont[6]_INST_0_i_4_0 ;
  wire fndFont_6_sn_1;
  wire r_tick;
  wire [2:0]sel0;

  assign fndFont_6_sn_1 = fndFont_6_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg[0]_0 ),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter_reg[1]_0 ),
        .O(\counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(r_tick),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(r_tick),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fndCom[0]_INST_0 
       (.I0(\counter_reg[1]_0 ),
        .I1(\counter_reg[0]_0 ),
        .O(fndCom[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fndCom[1]_INST_0 
       (.I0(\counter_reg[1]_0 ),
        .I1(\counter_reg[0]_0 ),
        .O(fndCom[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fndCom[2]_INST_0 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter_reg[1]_0 ),
        .O(fndCom[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fndCom[3]_INST_0 
       (.I0(\counter_reg[1]_0 ),
        .I1(\counter_reg[0]_0 ),
        .O(fndCom[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4184)) 
    \fndFont[0]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\fndFont[0] ),
        .I3(sel0[2]),
        .O(fndFont[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    \fndFont[1]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\fndFont[0] ),
        .O(fndFont[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h80C2)) 
    \fndFont[2]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(\fndFont[0] ),
        .I3(sel0[0]),
        .O(fndFont[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hC124)) 
    \fndFont[3]_INST_0 
       (.I0(\fndFont[0] ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(fndFont[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h02BA)) 
    \fndFont[4]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\fndFont[0] ),
        .O(fndFont[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    \fndFont[5]_INST_0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\fndFont[0] ),
        .I3(sel0[2]),
        .O(fndFont[5]));
  LUT4 #(
    .INIT(16'h4019)) 
    \fndFont[6]_INST_0 
       (.I0(\fndFont[0] ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(fndFont[6]));
  LUT6 #(
    .INIT(64'h8808800800000000)) 
    \fndFont[6]_INST_0_i_11 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter_reg[1]_0 ),
        .I2(\fndFont[6]_INST_0_i_4_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\fndFont[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000800)) 
    \fndFont[6]_INST_0_i_14 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter_reg[1]_0 ),
        .I2(\fndFont[6]_INST_0_i_4_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\fndFont[6]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hC30000AA)) 
    \fndFont[6]_INST_0_i_16 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\fndFont[6]_INST_0_i_3_0 ),
        .I3(\counter_reg[1]_0 ),
        .I4(\counter_reg[0]_0 ),
        .O(\fndFont[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fndFont[6]_INST_0_i_2 
       (.I0(fndFont_6_sn_1),
        .I1(\fndFont[6]_INST_0_i_11_n_0 ),
        .I2(\fndFont[6]_0 ),
        .I3(\fndFont[6]_1 ),
        .I4(\fndFont[6]_INST_0_i_14_n_0 ),
        .I5(\fndFont[6]_2 ),
        .O(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00008008)) 
    \fndFont[6]_INST_0_i_21 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter_reg[1]_0 ),
        .I2(\fndFont[6]_INST_0_i_4_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\fndFont[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0880080000000000)) 
    \fndFont[6]_INST_0_i_24 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter_reg[1]_0 ),
        .I2(\fndFont[6]_INST_0_i_4_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\fndFont[6]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABEAEBEAEBAAA)) 
    \fndFont[6]_INST_0_i_3 
       (.I0(\fndFont[6]_INST_0_i_16_n_0 ),
        .I1(\counter_reg[1]_0 ),
        .I2(\counter_reg[0]_0 ),
        .I3(\fndFont[6]_7 ),
        .I4(\fndFont[6]_8 ),
        .I5(\fndFont[6]_9 ),
        .O(sel0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fndFont[6]_INST_0_i_31 
       (.I0(\counter_reg[1]_0 ),
        .I1(\counter_reg[0]_0 ),
        .O(\counter_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fndFont[6]_INST_0_i_4 
       (.I0(\fndFont[6]_3 ),
        .I1(\fndFont[6]_INST_0_i_21_n_0 ),
        .I2(\fndFont[6]_4 ),
        .I3(\fndFont[6]_5 ),
        .I4(\fndFont[6]_INST_0_i_24_n_0 ),
        .I5(\fndFont[6]_6 ),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'h0000080000800000)) 
    \fndFont[6]_INST_0_i_6 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter_reg[1]_0 ),
        .I2(\fndFont[6]_INST_0_i_4_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\counter_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "digitSplitter" *) 
module design_1_FNDController_0_0_digitSplitter
   (O,
    CO,
    \slv_reg2_reg[12] ,
    \slv_reg2_reg[11] ,
    \slv_reg2_reg[11]_0 ,
    \slv_reg2_reg[13] ,
    \slv_reg2_reg[8] ,
    \slv_reg2_reg[10] ,
    i___50_carry_i_7_0,
    i___50_carry__0_i_8_0,
    i___50_carry__1_i_1_0,
    \counter_reg[1] ,
    \slv_reg2_reg[13]_0 ,
    \counter_reg[1]_0 ,
    \counter_reg[1]_1 ,
    \counter_reg[1]_2 ,
    \slv_reg2_reg[13]_1 ,
    \slv_reg2_reg[13]_2 ,
    \slv_reg2_reg[13]_3 ,
    \counter_reg[1]_3 ,
    o_digit_10000__17_carry__0_i_4,
    o_digit_10000__17_carry__0_i_4_0,
    Q,
    o_digit_10000__17_carry__1_i_2,
    o_digit_10000__45_carry_i_6,
    o_digit_10000__45_carry_i_6_0,
    o_digit_10000__45_carry__0_i_8,
    S,
    o_digit_10000__45_carry__1_i_6,
    o_digit_10000__45_carry__1_i_6_0,
    o_digit_10000__45_carry__0_0,
    o_digit_10000__45_carry__1_0,
    \fndFont[6]_INST_0_i_30_0 ,
    \o_digit_1000_inferred__0/i___1_carry__0_0 ,
    \o_digit_1000_inferred__0/i___1_carry__1_0 ,
    \o_digit_1000_inferred__0/i___1_carry__1_1 ,
    \o_digit_1000_inferred__0/i___1_carry__2_0 ,
    \o_digit_1000_inferred__0/i___1_carry__2_1 ,
    i___75_carry_i_6,
    i___75_carry_i_6_0,
    DI,
    i___75_carry_i_4,
    i___50_carry_i_4_0,
    i___50_carry_i_4_1,
    \o_digit_1000_inferred__0/i___75_carry__0_0 ,
    \o_digit_1000_inferred__0/i___75_carry__1_0 ,
    \fndFont[6]_INST_0_i_19_0 ,
    \fndFont[6]_INST_0_i_1_0 ,
    \fndFont[0] ,
    \fndFont[0]_0 ,
    \fndFont[0]_1 );
  output [2:0]O;
  output [0:0]CO;
  output [1:0]\slv_reg2_reg[12] ;
  output [2:0]\slv_reg2_reg[11] ;
  output [3:0]\slv_reg2_reg[11]_0 ;
  output [3:0]\slv_reg2_reg[13] ;
  output [1:0]\slv_reg2_reg[8] ;
  output [0:0]\slv_reg2_reg[10] ;
  output [3:0]i___50_carry_i_7_0;
  output [3:0]i___50_carry__0_i_8_0;
  output [0:0]i___50_carry__1_i_1_0;
  output \counter_reg[1] ;
  output \slv_reg2_reg[13]_0 ;
  output \counter_reg[1]_0 ;
  output \counter_reg[1]_1 ;
  output \counter_reg[1]_2 ;
  output \slv_reg2_reg[13]_1 ;
  output \slv_reg2_reg[13]_2 ;
  output \slv_reg2_reg[13]_3 ;
  output [0:0]\counter_reg[1]_3 ;
  input [2:0]o_digit_10000__17_carry__0_i_4;
  input [3:0]o_digit_10000__17_carry__0_i_4_0;
  input [13:0]Q;
  input [1:0]o_digit_10000__17_carry__1_i_2;
  input [0:0]o_digit_10000__45_carry_i_6;
  input [0:0]o_digit_10000__45_carry_i_6_0;
  input [0:0]o_digit_10000__45_carry__0_i_8;
  input [2:0]S;
  input [2:0]o_digit_10000__45_carry__1_i_6;
  input [0:0]o_digit_10000__45_carry__1_i_6_0;
  input [3:0]o_digit_10000__45_carry__0_0;
  input [3:0]o_digit_10000__45_carry__1_0;
  input [2:0]\fndFont[6]_INST_0_i_30_0 ;
  input [2:0]\o_digit_1000_inferred__0/i___1_carry__0_0 ;
  input [1:0]\o_digit_1000_inferred__0/i___1_carry__1_0 ;
  input [3:0]\o_digit_1000_inferred__0/i___1_carry__1_1 ;
  input [3:0]\o_digit_1000_inferred__0/i___1_carry__2_0 ;
  input [3:0]\o_digit_1000_inferred__0/i___1_carry__2_1 ;
  input [3:0]i___75_carry_i_6;
  input [3:0]i___75_carry_i_6_0;
  input [3:0]DI;
  input [3:0]i___75_carry_i_4;
  input [0:0]i___50_carry_i_4_0;
  input [1:0]i___50_carry_i_4_1;
  input [3:0]\o_digit_1000_inferred__0/i___75_carry__0_0 ;
  input [3:0]\o_digit_1000_inferred__0/i___75_carry__1_0 ;
  input [3:0]\fndFont[6]_INST_0_i_19_0 ;
  input \fndFont[6]_INST_0_i_1_0 ;
  input \fndFont[0] ;
  input \fndFont[0]_0 ;
  input \fndFont[0]_1 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]O;
  wire [13:0]Q;
  wire [2:0]S;
  wire \counter_reg[1] ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg[1]_1 ;
  wire \counter_reg[1]_2 ;
  wire [0:0]\counter_reg[1]_3 ;
  wire \fndFont[0] ;
  wire \fndFont[0]_0 ;
  wire \fndFont[0]_1 ;
  wire [3:0]\fndFont[6]_INST_0_i_19_0 ;
  wire \fndFont[6]_INST_0_i_1_0 ;
  wire [2:0]\fndFont[6]_INST_0_i_30_0 ;
  wire \fndFont[6]_INST_0_i_34_n_0 ;
  wire \fndFont[6]_INST_0_i_35_n_0 ;
  wire \fndFont[6]_INST_0_i_58_n_0 ;
  wire \fndFont[6]_INST_0_i_59_n_0 ;
  wire \fndFont[6]_INST_0_i_7_n_0 ;
  wire \fndFont[6]_INST_0_i_9_n_0 ;
  wire i___50_carry__0_i_1_n_0;
  wire i___50_carry__0_i_2_n_0;
  wire i___50_carry__0_i_3_n_0;
  wire i___50_carry__0_i_4_n_0;
  wire i___50_carry__0_i_5_n_0;
  wire i___50_carry__0_i_6_n_0;
  wire i___50_carry__0_i_7_n_0;
  wire [3:0]i___50_carry__0_i_8_0;
  wire i___50_carry__0_i_8_n_0;
  wire [0:0]i___50_carry__1_i_1_0;
  wire i___50_carry__1_i_1_n_0;
  wire i___50_carry_i_1_n_0;
  wire i___50_carry_i_2_n_0;
  wire i___50_carry_i_3_n_0;
  wire [0:0]i___50_carry_i_4_0;
  wire [1:0]i___50_carry_i_4_1;
  wire i___50_carry_i_4_n_0;
  wire i___50_carry_i_5_n_0;
  wire i___50_carry_i_6_n_0;
  wire [3:0]i___50_carry_i_7_0;
  wire i___50_carry_i_7_n_0;
  wire i___75_carry__0_i_1_n_0;
  wire i___75_carry__0_i_2_n_0;
  wire i___75_carry__0_i_3_n_0;
  wire i___75_carry__0_i_4_n_0;
  wire i___75_carry__1_i_1_n_0;
  wire i___75_carry__1_i_2_n_0;
  wire i___75_carry__1_i_3_n_0;
  wire i___75_carry__1_i_4_n_0;
  wire i___75_carry_i_1_n_0;
  wire i___75_carry_i_2_n_0;
  wire i___75_carry_i_3_n_0;
  wire [3:0]i___75_carry_i_4;
  wire [3:0]i___75_carry_i_6;
  wire [3:0]i___75_carry_i_6_0;
  wire [7:1]o_digit_1000;
  wire o_digit_10000__17_carry__0_i_2_n_0;
  wire [2:0]o_digit_10000__17_carry__0_i_4;
  wire [3:0]o_digit_10000__17_carry__0_i_4_0;
  wire o_digit_10000__17_carry__0_n_0;
  wire o_digit_10000__17_carry__0_n_1;
  wire o_digit_10000__17_carry__0_n_2;
  wire o_digit_10000__17_carry__0_n_3;
  wire [1:0]o_digit_10000__17_carry__1_i_2;
  wire o_digit_10000__17_carry__1_i_5_n_0;
  wire o_digit_10000__17_carry__1_i_6_n_0;
  wire o_digit_10000__17_carry__1_i_7_n_0;
  wire o_digit_10000__17_carry__1_n_1;
  wire o_digit_10000__17_carry__1_n_2;
  wire o_digit_10000__17_carry__1_n_3;
  wire o_digit_10000__17_carry_n_0;
  wire o_digit_10000__17_carry_n_1;
  wire o_digit_10000__17_carry_n_2;
  wire o_digit_10000__17_carry_n_3;
  wire [3:0]o_digit_10000__45_carry__0_0;
  wire o_digit_10000__45_carry__0_i_1_n_0;
  wire o_digit_10000__45_carry__0_i_2_n_0;
  wire o_digit_10000__45_carry__0_i_3_n_0;
  wire o_digit_10000__45_carry__0_i_4_n_0;
  wire [0:0]o_digit_10000__45_carry__0_i_8;
  wire o_digit_10000__45_carry__0_n_0;
  wire o_digit_10000__45_carry__0_n_1;
  wire o_digit_10000__45_carry__0_n_2;
  wire o_digit_10000__45_carry__0_n_3;
  wire [3:0]o_digit_10000__45_carry__1_0;
  wire o_digit_10000__45_carry__1_i_1_n_0;
  wire o_digit_10000__45_carry__1_i_2_n_0;
  wire o_digit_10000__45_carry__1_i_3_n_0;
  wire [2:0]o_digit_10000__45_carry__1_i_6;
  wire [0:0]o_digit_10000__45_carry__1_i_6_0;
  wire o_digit_10000__45_carry__1_n_1;
  wire o_digit_10000__45_carry__1_n_2;
  wire o_digit_10000__45_carry__1_n_3;
  wire o_digit_10000__45_carry_i_1_n_0;
  wire o_digit_10000__45_carry_i_2_n_0;
  wire o_digit_10000__45_carry_i_3_n_0;
  wire [0:0]o_digit_10000__45_carry_i_6;
  wire [0:0]o_digit_10000__45_carry_i_6_0;
  wire o_digit_10000__45_carry_n_0;
  wire o_digit_10000__45_carry_n_1;
  wire o_digit_10000__45_carry_n_2;
  wire o_digit_10000__45_carry_n_3;
  wire o_digit_10000_carry__0_n_3;
  wire o_digit_10000_carry_n_0;
  wire o_digit_10000_carry_n_1;
  wire o_digit_10000_carry_n_2;
  wire o_digit_10000_carry_n_3;
  wire [2:0]\o_digit_1000_inferred__0/i___1_carry__0_0 ;
  wire \o_digit_1000_inferred__0/i___1_carry__0_n_0 ;
  wire \o_digit_1000_inferred__0/i___1_carry__0_n_1 ;
  wire \o_digit_1000_inferred__0/i___1_carry__0_n_2 ;
  wire \o_digit_1000_inferred__0/i___1_carry__0_n_3 ;
  wire [1:0]\o_digit_1000_inferred__0/i___1_carry__1_0 ;
  wire [3:0]\o_digit_1000_inferred__0/i___1_carry__1_1 ;
  wire \o_digit_1000_inferred__0/i___1_carry__1_n_0 ;
  wire \o_digit_1000_inferred__0/i___1_carry__1_n_1 ;
  wire \o_digit_1000_inferred__0/i___1_carry__1_n_2 ;
  wire \o_digit_1000_inferred__0/i___1_carry__1_n_3 ;
  wire [3:0]\o_digit_1000_inferred__0/i___1_carry__2_0 ;
  wire [3:0]\o_digit_1000_inferred__0/i___1_carry__2_1 ;
  wire \o_digit_1000_inferred__0/i___1_carry__2_n_0 ;
  wire \o_digit_1000_inferred__0/i___1_carry__2_n_1 ;
  wire \o_digit_1000_inferred__0/i___1_carry__2_n_2 ;
  wire \o_digit_1000_inferred__0/i___1_carry__2_n_3 ;
  wire \o_digit_1000_inferred__0/i___1_carry__3_n_0 ;
  wire \o_digit_1000_inferred__0/i___1_carry__3_n_1 ;
  wire \o_digit_1000_inferred__0/i___1_carry__3_n_2 ;
  wire \o_digit_1000_inferred__0/i___1_carry__3_n_3 ;
  wire \o_digit_1000_inferred__0/i___1_carry__3_n_4 ;
  wire \o_digit_1000_inferred__0/i___1_carry__3_n_5 ;
  wire \o_digit_1000_inferred__0/i___1_carry__3_n_6 ;
  wire \o_digit_1000_inferred__0/i___1_carry__4_n_3 ;
  wire \o_digit_1000_inferred__0/i___1_carry__4_n_6 ;
  wire \o_digit_1000_inferred__0/i___1_carry__4_n_7 ;
  wire \o_digit_1000_inferred__0/i___1_carry_n_0 ;
  wire \o_digit_1000_inferred__0/i___1_carry_n_1 ;
  wire \o_digit_1000_inferred__0/i___1_carry_n_2 ;
  wire \o_digit_1000_inferred__0/i___1_carry_n_3 ;
  wire \o_digit_1000_inferred__0/i___50_carry__0_n_0 ;
  wire \o_digit_1000_inferred__0/i___50_carry__0_n_1 ;
  wire \o_digit_1000_inferred__0/i___50_carry__0_n_2 ;
  wire \o_digit_1000_inferred__0/i___50_carry__0_n_3 ;
  wire \o_digit_1000_inferred__0/i___50_carry_n_0 ;
  wire \o_digit_1000_inferred__0/i___50_carry_n_1 ;
  wire \o_digit_1000_inferred__0/i___50_carry_n_2 ;
  wire \o_digit_1000_inferred__0/i___50_carry_n_3 ;
  wire [3:0]\o_digit_1000_inferred__0/i___75_carry__0_0 ;
  wire \o_digit_1000_inferred__0/i___75_carry__0_n_0 ;
  wire \o_digit_1000_inferred__0/i___75_carry__0_n_1 ;
  wire \o_digit_1000_inferred__0/i___75_carry__0_n_2 ;
  wire \o_digit_1000_inferred__0/i___75_carry__0_n_3 ;
  wire [3:0]\o_digit_1000_inferred__0/i___75_carry__1_0 ;
  wire \o_digit_1000_inferred__0/i___75_carry__1_n_0 ;
  wire \o_digit_1000_inferred__0/i___75_carry__1_n_1 ;
  wire \o_digit_1000_inferred__0/i___75_carry__1_n_2 ;
  wire \o_digit_1000_inferred__0/i___75_carry__1_n_3 ;
  wire \o_digit_1000_inferred__0/i___75_carry_n_0 ;
  wire \o_digit_1000_inferred__0/i___75_carry_n_1 ;
  wire \o_digit_1000_inferred__0/i___75_carry_n_2 ;
  wire \o_digit_1000_inferred__0/i___75_carry_n_3 ;
  wire [0:0]\slv_reg2_reg[10] ;
  wire [2:0]\slv_reg2_reg[11] ;
  wire [3:0]\slv_reg2_reg[11]_0 ;
  wire [1:0]\slv_reg2_reg[12] ;
  wire [3:0]\slv_reg2_reg[13] ;
  wire \slv_reg2_reg[13]_0 ;
  wire \slv_reg2_reg[13]_1 ;
  wire \slv_reg2_reg[13]_2 ;
  wire \slv_reg2_reg[13]_3 ;
  wire [1:0]\slv_reg2_reg[8] ;
  wire [0:0]NLW_o_digit_10000__17_carry_O_UNCONNECTED;
  wire [3:3]NLW_o_digit_10000__17_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_o_digit_10000__45_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_digit_10000__45_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_o_digit_10000__45_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_o_digit_10000__45_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_o_digit_10000_carry_O_UNCONNECTED;
  wire [3:1]NLW_o_digit_10000_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_o_digit_10000_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_o_digit_1000_inferred__0/i___1_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_o_digit_1000_inferred__0/i___1_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_o_digit_1000_inferred__0/i___1_carry__1_O_UNCONNECTED ;
  wire [1:0]\NLW_o_digit_1000_inferred__0/i___1_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_o_digit_1000_inferred__0/i___1_carry__4_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_digit_1000_inferred__0/i___1_carry__4_O_UNCONNECTED ;
  wire [3:0]\NLW_o_digit_1000_inferred__0/i___50_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_o_digit_1000_inferred__0/i___50_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_o_digit_1000_inferred__0/i___75_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_o_digit_1000_inferred__0/i___75_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_o_digit_1000_inferred__0/i___75_carry__1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fndFont[6]_INST_0_i_1 
       (.I0(\fndFont[0] ),
        .I1(\fndFont[0]_0 ),
        .I2(\fndFont[6]_INST_0_i_7_n_0 ),
        .I3(\fndFont[0]_1 ),
        .I4(\fndFont[6]_INST_0_i_9_n_0 ),
        .O(\counter_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h2088882020888800)) 
    \fndFont[6]_INST_0_i_12 
       (.I0(\fndFont[6]_INST_0_i_1_0 ),
        .I1(o_digit_1000[1]),
        .I2(\fndFont[6]_INST_0_i_34_n_0 ),
        .I3(\slv_reg2_reg[13]_0 ),
        .I4(o_digit_1000[2]),
        .I5(\fndFont[6]_INST_0_i_35_n_0 ),
        .O(\counter_reg[1] ));
  LUT6 #(
    .INIT(64'h0002000000220200)) 
    \fndFont[6]_INST_0_i_15 
       (.I0(\fndFont[6]_INST_0_i_1_0 ),
        .I1(o_digit_1000[1]),
        .I2(\fndFont[6]_INST_0_i_34_n_0 ),
        .I3(\slv_reg2_reg[13]_0 ),
        .I4(o_digit_1000[2]),
        .I5(\fndFont[6]_INST_0_i_35_n_0 ),
        .O(\counter_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h18EFF718108EE710)) 
    \fndFont[6]_INST_0_i_18 
       (.I0(o_digit_1000[3]),
        .I1(o_digit_1000[7]),
        .I2(o_digit_1000[5]),
        .I3(o_digit_1000[6]),
        .I4(o_digit_1000[4]),
        .I5(o_digit_1000[2]),
        .O(\slv_reg2_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h559AAA65)) 
    \fndFont[6]_INST_0_i_19 
       (.I0(\slv_reg2_reg[8] [0]),
        .I1(Q[13]),
        .I2(i___50_carry__1_i_1_0),
        .I3(\o_digit_1000_inferred__0/i___75_carry__1_n_0 ),
        .I4(\slv_reg2_reg[13]_0 ),
        .O(\slv_reg2_reg[13]_1 ));
  LUT6 #(
    .INIT(64'h000020002200AA00)) 
    \fndFont[6]_INST_0_i_22 
       (.I0(\fndFont[6]_INST_0_i_1_0 ),
        .I1(\fndFont[6]_INST_0_i_35_n_0 ),
        .I2(o_digit_1000[2]),
        .I3(o_digit_1000[1]),
        .I4(\slv_reg2_reg[13]_0 ),
        .I5(\fndFont[6]_INST_0_i_34_n_0 ),
        .O(\counter_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00AA008800080000)) 
    \fndFont[6]_INST_0_i_25 
       (.I0(\fndFont[6]_INST_0_i_1_0 ),
        .I1(\fndFont[6]_INST_0_i_35_n_0 ),
        .I2(o_digit_1000[2]),
        .I3(o_digit_1000[1]),
        .I4(\slv_reg2_reg[13]_0 ),
        .I5(\fndFont[6]_INST_0_i_34_n_0 ),
        .O(\counter_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hAEFF)) 
    \fndFont[6]_INST_0_i_30 
       (.I0(o_digit_10000__45_carry__1_n_1),
        .I1(\slv_reg2_reg[13] [3]),
        .I2(Q[13]),
        .I3(Q[10]),
        .O(\slv_reg2_reg[13]_2 ));
  LUT5 #(
    .INIT(32'hFF75008A)) 
    \fndFont[6]_INST_0_i_32 
       (.I0(\slv_reg2_reg[8] [0]),
        .I1(Q[13]),
        .I2(i___50_carry__1_i_1_0),
        .I3(\o_digit_1000_inferred__0/i___75_carry__1_n_0 ),
        .I4(\slv_reg2_reg[8] [1]),
        .O(o_digit_1000[1]));
  LUT6 #(
    .INIT(64'hDDFDFFFF22020000)) 
    \fndFont[6]_INST_0_i_33 
       (.I0(\slv_reg2_reg[8] [1]),
        .I1(\o_digit_1000_inferred__0/i___75_carry__1_n_0 ),
        .I2(i___50_carry__1_i_1_0),
        .I3(Q[13]),
        .I4(\slv_reg2_reg[8] [0]),
        .I5(\slv_reg2_reg[10] ),
        .O(o_digit_1000[2]));
  LUT6 #(
    .INIT(64'hE7188AE7AE7118AE)) 
    \fndFont[6]_INST_0_i_34 
       (.I0(o_digit_1000[2]),
        .I1(o_digit_1000[7]),
        .I2(o_digit_1000[5]),
        .I3(o_digit_1000[6]),
        .I4(o_digit_1000[4]),
        .I5(o_digit_1000[3]),
        .O(\fndFont[6]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h9569966969569569)) 
    \fndFont[6]_INST_0_i_35 
       (.I0(o_digit_1000[2]),
        .I1(o_digit_1000[3]),
        .I2(o_digit_1000[7]),
        .I3(o_digit_1000[5]),
        .I4(o_digit_1000[6]),
        .I5(o_digit_1000[4]),
        .O(\fndFont[6]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \fndFont[6]_INST_0_i_40 
       (.I0(Q[13]),
        .I1(\slv_reg2_reg[13] [3]),
        .I2(o_digit_10000__45_carry__1_n_1),
        .O(\slv_reg2_reg[13]_3 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \fndFont[6]_INST_0_i_44 
       (.I0(\slv_reg2_reg[10] ),
        .I1(\slv_reg2_reg[8] [0]),
        .I2(\fndFont[6]_INST_0_i_58_n_0 ),
        .I3(\slv_reg2_reg[8] [1]),
        .I4(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .O(o_digit_1000[3]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \fndFont[6]_INST_0_i_45 
       (.I0(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .I1(\fndFont[6]_INST_0_i_59_n_0 ),
        .I2(\fndFont[6]_INST_0_i_58_n_0 ),
        .I3(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I4(\o_digit_1000_inferred__0/i___1_carry__4_n_6 ),
        .O(o_digit_1000[7]));
  LUT5 #(
    .INIT(32'hFF75008A)) 
    \fndFont[6]_INST_0_i_46 
       (.I0(\fndFont[6]_INST_0_i_59_n_0 ),
        .I1(Q[13]),
        .I2(i___50_carry__1_i_1_0),
        .I3(\o_digit_1000_inferred__0/i___75_carry__1_n_0 ),
        .I4(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .O(o_digit_1000[5]));
  LUT6 #(
    .INIT(64'hDDFDFFFF22020000)) 
    \fndFont[6]_INST_0_i_47 
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I1(\o_digit_1000_inferred__0/i___75_carry__1_n_0 ),
        .I2(i___50_carry__1_i_1_0),
        .I3(Q[13]),
        .I4(\fndFont[6]_INST_0_i_59_n_0 ),
        .I5(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .O(o_digit_1000[6]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \fndFont[6]_INST_0_i_48 
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I1(\slv_reg2_reg[8] [1]),
        .I2(\fndFont[6]_INST_0_i_58_n_0 ),
        .I3(\slv_reg2_reg[8] [0]),
        .I4(\slv_reg2_reg[10] ),
        .I5(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .O(o_digit_1000[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \fndFont[6]_INST_0_i_58 
       (.I0(Q[13]),
        .I1(i___50_carry__1_i_1_0),
        .I2(\o_digit_1000_inferred__0/i___75_carry__1_n_0 ),
        .O(\fndFont[6]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \fndFont[6]_INST_0_i_59 
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I1(\slv_reg2_reg[10] ),
        .I2(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .I3(\slv_reg2_reg[8] [0]),
        .I4(\slv_reg2_reg[8] [1]),
        .O(\fndFont[6]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2008200080A20002)) 
    \fndFont[6]_INST_0_i_7 
       (.I0(\fndFont[6]_INST_0_i_1_0 ),
        .I1(o_digit_1000[1]),
        .I2(\slv_reg2_reg[13]_0 ),
        .I3(o_digit_1000[2]),
        .I4(\fndFont[6]_INST_0_i_34_n_0 ),
        .I5(\fndFont[6]_INST_0_i_35_n_0 ),
        .O(\fndFont[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0000000008)) 
    \fndFont[6]_INST_0_i_9 
       (.I0(\fndFont[6]_INST_0_i_1_0 ),
        .I1(o_digit_1000[1]),
        .I2(\slv_reg2_reg[13]_0 ),
        .I3(o_digit_1000[2]),
        .I4(\fndFont[6]_INST_0_i_34_n_0 ),
        .I5(\fndFont[6]_INST_0_i_35_n_0 ),
        .O(\fndFont[6]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    i___50_carry__0_i_1
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .O(i___50_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___50_carry__0_i_2
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .O(i___50_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___50_carry__0_i_3
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__4_n_6 ),
        .I2(\slv_reg2_reg[10] ),
        .O(i___50_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___50_carry__0_i_4
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .I2(\slv_reg2_reg[8] [1]),
        .O(i___50_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___50_carry__0_i_5
       (.I0(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .I2(\o_digit_1000_inferred__0/i___1_carry__4_n_6 ),
        .I3(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .O(i___50_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___50_carry__0_i_6
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I2(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .I3(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .O(i___50_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    i___50_carry__0_i_7
       (.I0(\slv_reg2_reg[10] ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__4_n_6 ),
        .I2(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .I3(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I4(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .O(i___50_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___50_carry__0_i_8
       (.I0(\slv_reg2_reg[8] [1]),
        .I1(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .I2(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I3(\o_digit_1000_inferred__0/i___1_carry__4_n_6 ),
        .I4(\slv_reg2_reg[10] ),
        .I5(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .O(i___50_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    i___50_carry__1_i_1
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__4_n_6 ),
        .I2(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .O(i___50_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___50_carry_i_1
       (.I0(\slv_reg2_reg[10] ),
        .I1(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I2(\slv_reg2_reg[8] [0]),
        .O(i___50_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i___50_carry_i_2
       (.I0(\slv_reg2_reg[8] [0]),
        .I1(\slv_reg2_reg[10] ),
        .I2(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .O(i___50_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___50_carry_i_3
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I1(\slv_reg2_reg[8] [0]),
        .O(i___50_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___50_carry_i_4
       (.I0(\slv_reg2_reg[8] [0]),
        .I1(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I2(\slv_reg2_reg[10] ),
        .I3(\o_digit_1000_inferred__0/i___1_carry__4_n_7 ),
        .I4(\slv_reg2_reg[8] [1]),
        .I5(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .O(i___50_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    i___50_carry_i_5
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_4 ),
        .I1(\slv_reg2_reg[10] ),
        .I2(\slv_reg2_reg[8] [0]),
        .I3(\slv_reg2_reg[8] [1]),
        .I4(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .O(i___50_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___50_carry_i_6
       (.I0(\slv_reg2_reg[8] [0]),
        .I1(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I2(\slv_reg2_reg[8] [1]),
        .I3(\o_digit_1000_inferred__0/i___1_carry__3_n_5 ),
        .O(i___50_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___50_carry_i_7
       (.I0(\o_digit_1000_inferred__0/i___1_carry__3_n_6 ),
        .I1(\slv_reg2_reg[8] [0]),
        .O(i___50_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry__0_i_1
       (.I0(i___50_carry_i_7_0[3]),
        .I1(Q[8]),
        .O(i___75_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry__0_i_2
       (.I0(i___50_carry_i_7_0[2]),
        .I1(Q[7]),
        .O(i___75_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___75_carry__0_i_3
       (.I0(i___50_carry_i_7_0[1]),
        .I1(Q[6]),
        .O(i___75_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___75_carry__0_i_4
       (.I0(i___50_carry_i_7_0[0]),
        .I1(Q[5]),
        .O(i___75_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry__1_i_1
       (.I0(i___50_carry__0_i_8_0[3]),
        .I1(Q[12]),
        .O(i___75_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry__1_i_2
       (.I0(i___50_carry__0_i_8_0[2]),
        .I1(Q[11]),
        .O(i___75_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry__1_i_3
       (.I0(i___50_carry__0_i_8_0[1]),
        .I1(Q[10]),
        .O(i___75_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry__1_i_4
       (.I0(i___50_carry__0_i_8_0[0]),
        .I1(Q[9]),
        .O(i___75_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry_i_1
       (.I0(\slv_reg2_reg[10] ),
        .I1(Q[4]),
        .O(i___75_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___75_carry_i_2
       (.I0(\slv_reg2_reg[8] [1]),
        .I1(Q[3]),
        .O(i___75_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___75_carry_i_3
       (.I0(\slv_reg2_reg[8] [0]),
        .I1(Q[2]),
        .O(i___75_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_digit_10000__17_carry
       (.CI(1'b0),
        .CO({o_digit_10000__17_carry_n_0,o_digit_10000__17_carry_n_1,o_digit_10000__17_carry_n_2,o_digit_10000__17_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_digit_10000__45_carry_i_6,Q[11:10],1'b0}),
        .O({\slv_reg2_reg[11] ,NLW_o_digit_10000__17_carry_O_UNCONNECTED[0]}),
        .S({o_digit_10000__45_carry_i_6_0,Q[11:10],1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_digit_10000__17_carry__0
       (.CI(o_digit_10000__17_carry_n_0),
        .CO({o_digit_10000__17_carry__0_n_0,o_digit_10000__17_carry__0_n_1,o_digit_10000__17_carry__0_n_2,o_digit_10000__17_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_digit_10000__45_carry__0_i_8,1'b0,O[0],1'b0}),
        .O(\slv_reg2_reg[11]_0 ),
        .S({o_digit_10000__17_carry__0_i_2_n_0,S}));
  LUT3 #(
    .INIT(8'hB4)) 
    o_digit_10000__17_carry__0_i_2
       (.I0(O[1]),
        .I1(Q[13]),
        .I2(O[2]),
        .O(o_digit_10000__17_carry__0_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_digit_10000__17_carry__1
       (.CI(o_digit_10000__17_carry__0_n_0),
        .CO({NLW_o_digit_10000__17_carry__1_CO_UNCONNECTED[3],o_digit_10000__17_carry__1_n_1,o_digit_10000__17_carry__1_n_2,o_digit_10000__17_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,o_digit_10000__45_carry__1_i_6}),
        .O(\slv_reg2_reg[13] ),
        .S({o_digit_10000__45_carry__1_i_6_0,o_digit_10000__17_carry__1_i_5_n_0,o_digit_10000__17_carry__1_i_6_n_0,o_digit_10000__17_carry__1_i_7_n_0}));
  LUT3 #(
    .INIT(8'h9C)) 
    o_digit_10000__17_carry__1_i_5
       (.I0(\slv_reg2_reg[12] [1]),
        .I1(CO),
        .I2(Q[13]),
        .O(o_digit_10000__17_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    o_digit_10000__17_carry__1_i_6
       (.I0(\slv_reg2_reg[12] [0]),
        .I1(\slv_reg2_reg[12] [1]),
        .I2(Q[13]),
        .O(o_digit_10000__17_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    o_digit_10000__17_carry__1_i_7
       (.I0(O[2]),
        .I1(\slv_reg2_reg[12] [0]),
        .I2(Q[13]),
        .O(o_digit_10000__17_carry__1_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_digit_10000__45_carry
       (.CI(1'b0),
        .CO({o_digit_10000__45_carry_n_0,o_digit_10000__45_carry_n_1,o_digit_10000__45_carry_n_2,o_digit_10000__45_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_digit_10000__45_carry_i_1_n_0,o_digit_10000__45_carry_i_2_n_0,o_digit_10000__45_carry_i_3_n_0,1'b0}),
        .O(NLW_o_digit_10000__45_carry_O_UNCONNECTED[3:0]),
        .S(o_digit_10000__45_carry__0_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_digit_10000__45_carry__0
       (.CI(o_digit_10000__45_carry_n_0),
        .CO({o_digit_10000__45_carry__0_n_0,o_digit_10000__45_carry__0_n_1,o_digit_10000__45_carry__0_n_2,o_digit_10000__45_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_digit_10000__45_carry__0_i_1_n_0,o_digit_10000__45_carry__0_i_2_n_0,o_digit_10000__45_carry__0_i_3_n_0,o_digit_10000__45_carry__0_i_4_n_0}),
        .O(NLW_o_digit_10000__45_carry__0_O_UNCONNECTED[3:0]),
        .S(o_digit_10000__45_carry__1_0));
  LUT2 #(
    .INIT(4'hB)) 
    o_digit_10000__45_carry__0_i_1
       (.I0(\slv_reg2_reg[11]_0 [3]),
        .I1(Q[9]),
        .O(o_digit_10000__45_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    o_digit_10000__45_carry__0_i_2
       (.I0(\slv_reg2_reg[11]_0 [2]),
        .I1(Q[8]),
        .O(o_digit_10000__45_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    o_digit_10000__45_carry__0_i_3
       (.I0(\slv_reg2_reg[11]_0 [1]),
        .I1(Q[7]),
        .O(o_digit_10000__45_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    o_digit_10000__45_carry__0_i_4
       (.I0(\slv_reg2_reg[11]_0 [0]),
        .I1(Q[6]),
        .O(o_digit_10000__45_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_digit_10000__45_carry__1
       (.CI(o_digit_10000__45_carry__0_n_0),
        .CO({NLW_o_digit_10000__45_carry__1_CO_UNCONNECTED[3],o_digit_10000__45_carry__1_n_1,o_digit_10000__45_carry__1_n_2,o_digit_10000__45_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,o_digit_10000__45_carry__1_i_1_n_0,o_digit_10000__45_carry__1_i_2_n_0,o_digit_10000__45_carry__1_i_3_n_0}),
        .O(NLW_o_digit_10000__45_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,\fndFont[6]_INST_0_i_30_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    o_digit_10000__45_carry__1_i_1
       (.I0(\slv_reg2_reg[13] [2]),
        .I1(Q[12]),
        .O(o_digit_10000__45_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_digit_10000__45_carry__1_i_2
       (.I0(\slv_reg2_reg[13] [1]),
        .I1(Q[11]),
        .O(o_digit_10000__45_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_digit_10000__45_carry__1_i_3
       (.I0(\slv_reg2_reg[13] [0]),
        .I1(Q[10]),
        .O(o_digit_10000__45_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    o_digit_10000__45_carry_i_1
       (.I0(\slv_reg2_reg[11] [2]),
        .I1(Q[5]),
        .O(o_digit_10000__45_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_digit_10000__45_carry_i_2
       (.I0(\slv_reg2_reg[11] [1]),
        .I1(Q[4]),
        .O(o_digit_10000__45_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    o_digit_10000__45_carry_i_3
       (.I0(\slv_reg2_reg[11] [0]),
        .I1(Q[3]),
        .O(o_digit_10000__45_carry_i_3_n_0));
  CARRY4 o_digit_10000_carry
       (.CI(1'b0),
        .CO({o_digit_10000_carry_n_0,o_digit_10000_carry_n_1,o_digit_10000_carry_n_2,o_digit_10000_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_digit_10000__17_carry__0_i_4[2],o_digit_10000__17_carry__0_i_4}),
        .O({O,NLW_o_digit_10000_carry_O_UNCONNECTED[0]}),
        .S(o_digit_10000__17_carry__0_i_4_0));
  CARRY4 o_digit_10000_carry__0
       (.CI(o_digit_10000_carry_n_0),
        .CO({NLW_o_digit_10000_carry__0_CO_UNCONNECTED[3],CO,NLW_o_digit_10000_carry__0_CO_UNCONNECTED[1],o_digit_10000_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[12],o_digit_10000__17_carry__0_i_4[2]}),
        .O({NLW_o_digit_10000_carry__0_O_UNCONNECTED[3:2],\slv_reg2_reg[12] }),
        .S({1'b0,1'b1,o_digit_10000__17_carry__1_i_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___1_carry 
       (.CI(1'b0),
        .CO({\o_digit_1000_inferred__0/i___1_carry_n_0 ,\o_digit_1000_inferred__0/i___1_carry_n_1 ,\o_digit_1000_inferred__0/i___1_carry_n_2 ,\o_digit_1000_inferred__0/i___1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[1:0],1'b0,1'b1}),
        .O(\NLW_o_digit_1000_inferred__0/i___1_carry_O_UNCONNECTED [3:0]),
        .S({\o_digit_1000_inferred__0/i___1_carry__0_0 ,Q[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___1_carry__0 
       (.CI(\o_digit_1000_inferred__0/i___1_carry_n_0 ),
        .CO({\o_digit_1000_inferred__0/i___1_carry__0_n_0 ,\o_digit_1000_inferred__0/i___1_carry__0_n_1 ,\o_digit_1000_inferred__0/i___1_carry__0_n_2 ,\o_digit_1000_inferred__0/i___1_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_digit_1000_inferred__0/i___1_carry__1_0 ,Q[3:2]}),
        .O(\NLW_o_digit_1000_inferred__0/i___1_carry__0_O_UNCONNECTED [3:0]),
        .S(\o_digit_1000_inferred__0/i___1_carry__1_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___1_carry__1 
       (.CI(\o_digit_1000_inferred__0/i___1_carry__0_n_0 ),
        .CO({\o_digit_1000_inferred__0/i___1_carry__1_n_0 ,\o_digit_1000_inferred__0/i___1_carry__1_n_1 ,\o_digit_1000_inferred__0/i___1_carry__1_n_2 ,\o_digit_1000_inferred__0/i___1_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\o_digit_1000_inferred__0/i___1_carry__2_0 ),
        .O(\NLW_o_digit_1000_inferred__0/i___1_carry__1_O_UNCONNECTED [3:0]),
        .S(\o_digit_1000_inferred__0/i___1_carry__2_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___1_carry__2 
       (.CI(\o_digit_1000_inferred__0/i___1_carry__1_n_0 ),
        .CO({\o_digit_1000_inferred__0/i___1_carry__2_n_0 ,\o_digit_1000_inferred__0/i___1_carry__2_n_1 ,\o_digit_1000_inferred__0/i___1_carry__2_n_2 ,\o_digit_1000_inferred__0/i___1_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(i___75_carry_i_6),
        .O({\slv_reg2_reg[8] ,\NLW_o_digit_1000_inferred__0/i___1_carry__2_O_UNCONNECTED [1:0]}),
        .S(i___75_carry_i_6_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___1_carry__3 
       (.CI(\o_digit_1000_inferred__0/i___1_carry__2_n_0 ),
        .CO({\o_digit_1000_inferred__0/i___1_carry__3_n_0 ,\o_digit_1000_inferred__0/i___1_carry__3_n_1 ,\o_digit_1000_inferred__0/i___1_carry__3_n_2 ,\o_digit_1000_inferred__0/i___1_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O({\o_digit_1000_inferred__0/i___1_carry__3_n_4 ,\o_digit_1000_inferred__0/i___1_carry__3_n_5 ,\o_digit_1000_inferred__0/i___1_carry__3_n_6 ,\slv_reg2_reg[10] }),
        .S(i___75_carry_i_4));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___1_carry__4 
       (.CI(\o_digit_1000_inferred__0/i___1_carry__3_n_0 ),
        .CO({\NLW_o_digit_1000_inferred__0/i___1_carry__4_CO_UNCONNECTED [3:1],\o_digit_1000_inferred__0/i___1_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___50_carry_i_4_0}),
        .O({\NLW_o_digit_1000_inferred__0/i___1_carry__4_O_UNCONNECTED [3:2],\o_digit_1000_inferred__0/i___1_carry__4_n_6 ,\o_digit_1000_inferred__0/i___1_carry__4_n_7 }),
        .S({1'b0,1'b0,i___50_carry_i_4_1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___50_carry 
       (.CI(1'b0),
        .CO({\o_digit_1000_inferred__0/i___50_carry_n_0 ,\o_digit_1000_inferred__0/i___50_carry_n_1 ,\o_digit_1000_inferred__0/i___50_carry_n_2 ,\o_digit_1000_inferred__0/i___50_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___50_carry_i_1_n_0,i___50_carry_i_2_n_0,i___50_carry_i_3_n_0,1'b0}),
        .O(i___50_carry_i_7_0),
        .S({i___50_carry_i_4_n_0,i___50_carry_i_5_n_0,i___50_carry_i_6_n_0,i___50_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___50_carry__0 
       (.CI(\o_digit_1000_inferred__0/i___50_carry_n_0 ),
        .CO({\o_digit_1000_inferred__0/i___50_carry__0_n_0 ,\o_digit_1000_inferred__0/i___50_carry__0_n_1 ,\o_digit_1000_inferred__0/i___50_carry__0_n_2 ,\o_digit_1000_inferred__0/i___50_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___50_carry__0_i_1_n_0,i___50_carry__0_i_2_n_0,i___50_carry__0_i_3_n_0,i___50_carry__0_i_4_n_0}),
        .O(i___50_carry__0_i_8_0),
        .S({i___50_carry__0_i_5_n_0,i___50_carry__0_i_6_n_0,i___50_carry__0_i_7_n_0,i___50_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___50_carry__1 
       (.CI(\o_digit_1000_inferred__0/i___50_carry__0_n_0 ),
        .CO(\NLW_o_digit_1000_inferred__0/i___50_carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_o_digit_1000_inferred__0/i___50_carry__1_O_UNCONNECTED [3:1],i___50_carry__1_i_1_0}),
        .S({1'b0,1'b0,1'b0,i___50_carry__1_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___75_carry 
       (.CI(1'b0),
        .CO({\o_digit_1000_inferred__0/i___75_carry_n_0 ,\o_digit_1000_inferred__0/i___75_carry_n_1 ,\o_digit_1000_inferred__0/i___75_carry_n_2 ,\o_digit_1000_inferred__0/i___75_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___75_carry_i_1_n_0,i___75_carry_i_2_n_0,i___75_carry_i_3_n_0,1'b0}),
        .O(\NLW_o_digit_1000_inferred__0/i___75_carry_O_UNCONNECTED [3:0]),
        .S(\o_digit_1000_inferred__0/i___75_carry__0_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___75_carry__0 
       (.CI(\o_digit_1000_inferred__0/i___75_carry_n_0 ),
        .CO({\o_digit_1000_inferred__0/i___75_carry__0_n_0 ,\o_digit_1000_inferred__0/i___75_carry__0_n_1 ,\o_digit_1000_inferred__0/i___75_carry__0_n_2 ,\o_digit_1000_inferred__0/i___75_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___75_carry__0_i_1_n_0,i___75_carry__0_i_2_n_0,i___75_carry__0_i_3_n_0,i___75_carry__0_i_4_n_0}),
        .O(\NLW_o_digit_1000_inferred__0/i___75_carry__0_O_UNCONNECTED [3:0]),
        .S(\o_digit_1000_inferred__0/i___75_carry__1_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_digit_1000_inferred__0/i___75_carry__1 
       (.CI(\o_digit_1000_inferred__0/i___75_carry__0_n_0 ),
        .CO({\o_digit_1000_inferred__0/i___75_carry__1_n_0 ,\o_digit_1000_inferred__0/i___75_carry__1_n_1 ,\o_digit_1000_inferred__0/i___75_carry__1_n_2 ,\o_digit_1000_inferred__0/i___75_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___75_carry__1_i_1_n_0,i___75_carry__1_i_2_n_0,i___75_carry__1_i_3_n_0,i___75_carry__1_i_4_n_0}),
        .O(\NLW_o_digit_1000_inferred__0/i___75_carry__1_O_UNCONNECTED [3:0]),
        .S(\fndFont[6]_INST_0_i_19_0 ));
endmodule

(* ORIG_REF_NAME = "fndController" *) 
module design_1_FNDController_0_0_fndController
   (O,
    CO,
    \slv_reg2_reg[12] ,
    \slv_reg2_reg[11] ,
    \slv_reg2_reg[11]_0 ,
    \slv_reg2_reg[13] ,
    \slv_reg2_reg[8] ,
    \slv_reg2_reg[10] ,
    i___50_carry_i_7,
    i___50_carry__0_i_8,
    i___50_carry__1_i_1,
    fndFont,
    i,
    fndCom,
    o_digit_10000__17_carry__0_i_4,
    o_digit_10000__17_carry__0_i_4_0,
    Q,
    o_digit_10000__17_carry__1_i_2,
    o_digit_10000__45_carry_i_6,
    o_digit_10000__45_carry_i_6_0,
    o_digit_10000__45_carry__0_i_8,
    S,
    o_digit_10000__45_carry__1_i_6,
    o_digit_10000__45_carry__1_i_6_0,
    o_digit_10000__45_carry__0,
    o_digit_10000__45_carry__1,
    \fndFont[6]_INST_0_i_30 ,
    \o_digit_1000_inferred__0/i___1_carry__0 ,
    \o_digit_1000_inferred__0/i___1_carry__1 ,
    \o_digit_1000_inferred__0/i___1_carry__1_0 ,
    \o_digit_1000_inferred__0/i___1_carry__2 ,
    \o_digit_1000_inferred__0/i___1_carry__2_0 ,
    i___75_carry_i_6,
    i___75_carry_i_6_0,
    DI,
    i___75_carry_i_4,
    i___50_carry_i_4,
    i___50_carry_i_4_0,
    \o_digit_1000_inferred__0/i___75_carry__0 ,
    \o_digit_1000_inferred__0/i___75_carry__1 ,
    \fndFont[6]_INST_0_i_19 ,
    s00_axi_aclk,
    fndFont_6_sp_1,
    \fndFont[6]_0 ,
    \fndFont[6]_1 ,
    \fndFont[6]_2 ,
    \fndFont[6]_3 ,
    fndFont_0_sp_1,
    \fndFont[0]_0 );
  output [2:0]O;
  output [0:0]CO;
  output [1:0]\slv_reg2_reg[12] ;
  output [2:0]\slv_reg2_reg[11] ;
  output [3:0]\slv_reg2_reg[11]_0 ;
  output [3:0]\slv_reg2_reg[13] ;
  output [1:0]\slv_reg2_reg[8] ;
  output [0:0]\slv_reg2_reg[10] ;
  output [3:0]i___50_carry_i_7;
  output [3:0]i___50_carry__0_i_8;
  output [0:0]i___50_carry__1_i_1;
  output [6:0]fndFont;
  output [1:0]i;
  output [3:0]fndCom;
  input [2:0]o_digit_10000__17_carry__0_i_4;
  input [3:0]o_digit_10000__17_carry__0_i_4_0;
  input [13:0]Q;
  input [1:0]o_digit_10000__17_carry__1_i_2;
  input [0:0]o_digit_10000__45_carry_i_6;
  input [0:0]o_digit_10000__45_carry_i_6_0;
  input [0:0]o_digit_10000__45_carry__0_i_8;
  input [2:0]S;
  input [2:0]o_digit_10000__45_carry__1_i_6;
  input [0:0]o_digit_10000__45_carry__1_i_6_0;
  input [3:0]o_digit_10000__45_carry__0;
  input [3:0]o_digit_10000__45_carry__1;
  input [2:0]\fndFont[6]_INST_0_i_30 ;
  input [2:0]\o_digit_1000_inferred__0/i___1_carry__0 ;
  input [1:0]\o_digit_1000_inferred__0/i___1_carry__1 ;
  input [3:0]\o_digit_1000_inferred__0/i___1_carry__1_0 ;
  input [3:0]\o_digit_1000_inferred__0/i___1_carry__2 ;
  input [3:0]\o_digit_1000_inferred__0/i___1_carry__2_0 ;
  input [3:0]i___75_carry_i_6;
  input [3:0]i___75_carry_i_6_0;
  input [3:0]DI;
  input [3:0]i___75_carry_i_4;
  input [0:0]i___50_carry_i_4;
  input [1:0]i___50_carry_i_4_0;
  input [3:0]\o_digit_1000_inferred__0/i___75_carry__0 ;
  input [3:0]\o_digit_1000_inferred__0/i___75_carry__1 ;
  input [3:0]\fndFont[6]_INST_0_i_19 ;
  input s00_axi_aclk;
  input fndFont_6_sp_1;
  input \fndFont[6]_0 ;
  input \fndFont[6]_1 ;
  input \fndFont[6]_2 ;
  input [0:0]\fndFont[6]_3 ;
  input fndFont_0_sp_1;
  input \fndFont[0]_0 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]O;
  wire [13:0]Q;
  wire [2:0]S;
  wire U_Counter_2bit_n_14;
  wire U_Counter_2bit_n_9;
  wire U_DigitSplitter_n_29;
  wire U_DigitSplitter_n_30;
  wire U_DigitSplitter_n_31;
  wire U_DigitSplitter_n_32;
  wire U_DigitSplitter_n_33;
  wire U_DigitSplitter_n_34;
  wire U_DigitSplitter_n_35;
  wire U_DigitSplitter_n_36;
  wire [3:0]fndCom;
  wire [6:0]fndFont;
  wire \fndFont[0]_0 ;
  wire \fndFont[6]_0 ;
  wire \fndFont[6]_1 ;
  wire \fndFont[6]_2 ;
  wire [0:0]\fndFont[6]_3 ;
  wire [3:0]\fndFont[6]_INST_0_i_19 ;
  wire [2:0]\fndFont[6]_INST_0_i_30 ;
  wire fndFont_0_sn_1;
  wire fndFont_6_sn_1;
  wire [1:0]i;
  wire [3:0]i___50_carry__0_i_8;
  wire [0:0]i___50_carry__1_i_1;
  wire [0:0]i___50_carry_i_4;
  wire [1:0]i___50_carry_i_4_0;
  wire [3:0]i___50_carry_i_7;
  wire [3:0]i___75_carry_i_4;
  wire [3:0]i___75_carry_i_6;
  wire [3:0]i___75_carry_i_6_0;
  wire [2:0]o_digit_10000__17_carry__0_i_4;
  wire [3:0]o_digit_10000__17_carry__0_i_4_0;
  wire [1:0]o_digit_10000__17_carry__1_i_2;
  wire [3:0]o_digit_10000__45_carry__0;
  wire [0:0]o_digit_10000__45_carry__0_i_8;
  wire [3:0]o_digit_10000__45_carry__1;
  wire [2:0]o_digit_10000__45_carry__1_i_6;
  wire [0:0]o_digit_10000__45_carry__1_i_6_0;
  wire [0:0]o_digit_10000__45_carry_i_6;
  wire [0:0]o_digit_10000__45_carry_i_6_0;
  wire [2:0]\o_digit_1000_inferred__0/i___1_carry__0 ;
  wire [1:0]\o_digit_1000_inferred__0/i___1_carry__1 ;
  wire [3:0]\o_digit_1000_inferred__0/i___1_carry__1_0 ;
  wire [3:0]\o_digit_1000_inferred__0/i___1_carry__2 ;
  wire [3:0]\o_digit_1000_inferred__0/i___1_carry__2_0 ;
  wire [3:0]\o_digit_1000_inferred__0/i___75_carry__0 ;
  wire [3:0]\o_digit_1000_inferred__0/i___75_carry__1 ;
  wire r_tick;
  wire s00_axi_aclk;
  wire [3:3]sel0;
  wire [0:0]\slv_reg2_reg[10] ;
  wire [2:0]\slv_reg2_reg[11] ;
  wire [3:0]\slv_reg2_reg[11]_0 ;
  wire [1:0]\slv_reg2_reg[12] ;
  wire [3:0]\slv_reg2_reg[13] ;
  wire [1:0]\slv_reg2_reg[8] ;

  assign fndFont_0_sn_1 = fndFont_0_sp_1;
  assign fndFont_6_sn_1 = fndFont_6_sp_1;
  design_1_FNDController_0_0_clkDiv U_ClkDiv
       (.r_tick(r_tick),
        .s00_axi_aclk(s00_axi_aclk));
  design_1_FNDController_0_0_counter U_Counter_2bit
       (.Q({Q[13:10],Q[0]}),
        .\counter_reg[0]_0 (i[0]),
        .\counter_reg[0]_1 (U_Counter_2bit_n_9),
        .\counter_reg[1]_0 (i[1]),
        .\counter_reg[1]_1 (U_Counter_2bit_n_14),
        .fndCom(fndCom),
        .fndFont(fndFont),
        .\fndFont[0] (sel0),
        .\fndFont[6]_0 (U_DigitSplitter_n_29),
        .\fndFont[6]_1 (\fndFont[6]_0 ),
        .\fndFont[6]_2 (U_DigitSplitter_n_31),
        .\fndFont[6]_3 (\fndFont[6]_1 ),
        .\fndFont[6]_4 (U_DigitSplitter_n_32),
        .\fndFont[6]_5 (\fndFont[6]_2 ),
        .\fndFont[6]_6 (U_DigitSplitter_n_33),
        .\fndFont[6]_7 (\fndFont[6]_3 ),
        .\fndFont[6]_8 (U_DigitSplitter_n_30),
        .\fndFont[6]_9 (U_DigitSplitter_n_34),
        .\fndFont[6]_INST_0_i_3_0 (U_DigitSplitter_n_36),
        .\fndFont[6]_INST_0_i_4_0 (U_DigitSplitter_n_35),
        .fndFont_6_sp_1(fndFont_6_sn_1),
        .r_tick(r_tick));
  design_1_FNDController_0_0_digitSplitter U_DigitSplitter
       (.CO(CO),
        .DI(DI),
        .O(O),
        .Q(Q),
        .S(S),
        .\counter_reg[1] (U_DigitSplitter_n_29),
        .\counter_reg[1]_0 (U_DigitSplitter_n_31),
        .\counter_reg[1]_1 (U_DigitSplitter_n_32),
        .\counter_reg[1]_2 (U_DigitSplitter_n_33),
        .\counter_reg[1]_3 (sel0),
        .\fndFont[0] (fndFont_0_sn_1),
        .\fndFont[0]_0 (U_Counter_2bit_n_9),
        .\fndFont[0]_1 (\fndFont[0]_0 ),
        .\fndFont[6]_INST_0_i_19_0 (\fndFont[6]_INST_0_i_19 ),
        .\fndFont[6]_INST_0_i_1_0 (U_Counter_2bit_n_14),
        .\fndFont[6]_INST_0_i_30_0 (\fndFont[6]_INST_0_i_30 ),
        .i___50_carry__0_i_8_0(i___50_carry__0_i_8),
        .i___50_carry__1_i_1_0(i___50_carry__1_i_1),
        .i___50_carry_i_4_0(i___50_carry_i_4),
        .i___50_carry_i_4_1(i___50_carry_i_4_0),
        .i___50_carry_i_7_0(i___50_carry_i_7),
        .i___75_carry_i_4(i___75_carry_i_4),
        .i___75_carry_i_6(i___75_carry_i_6),
        .i___75_carry_i_6_0(i___75_carry_i_6_0),
        .o_digit_10000__17_carry__0_i_4(o_digit_10000__17_carry__0_i_4),
        .o_digit_10000__17_carry__0_i_4_0(o_digit_10000__17_carry__0_i_4_0),
        .o_digit_10000__17_carry__1_i_2(o_digit_10000__17_carry__1_i_2),
        .o_digit_10000__45_carry__0_0(o_digit_10000__45_carry__0),
        .o_digit_10000__45_carry__0_i_8(o_digit_10000__45_carry__0_i_8),
        .o_digit_10000__45_carry__1_0(o_digit_10000__45_carry__1),
        .o_digit_10000__45_carry__1_i_6(o_digit_10000__45_carry__1_i_6),
        .o_digit_10000__45_carry__1_i_6_0(o_digit_10000__45_carry__1_i_6_0),
        .o_digit_10000__45_carry_i_6(o_digit_10000__45_carry_i_6),
        .o_digit_10000__45_carry_i_6_0(o_digit_10000__45_carry_i_6_0),
        .\o_digit_1000_inferred__0/i___1_carry__0_0 (\o_digit_1000_inferred__0/i___1_carry__0 ),
        .\o_digit_1000_inferred__0/i___1_carry__1_0 (\o_digit_1000_inferred__0/i___1_carry__1 ),
        .\o_digit_1000_inferred__0/i___1_carry__1_1 (\o_digit_1000_inferred__0/i___1_carry__1_0 ),
        .\o_digit_1000_inferred__0/i___1_carry__2_0 (\o_digit_1000_inferred__0/i___1_carry__2 ),
        .\o_digit_1000_inferred__0/i___1_carry__2_1 (\o_digit_1000_inferred__0/i___1_carry__2_0 ),
        .\o_digit_1000_inferred__0/i___75_carry__0_0 (\o_digit_1000_inferred__0/i___75_carry__0 ),
        .\o_digit_1000_inferred__0/i___75_carry__1_0 (\o_digit_1000_inferred__0/i___75_carry__1 ),
        .\slv_reg2_reg[10] (\slv_reg2_reg[10] ),
        .\slv_reg2_reg[11] (\slv_reg2_reg[11] ),
        .\slv_reg2_reg[11]_0 (\slv_reg2_reg[11]_0 ),
        .\slv_reg2_reg[12] (\slv_reg2_reg[12] ),
        .\slv_reg2_reg[13] (\slv_reg2_reg[13] ),
        .\slv_reg2_reg[13]_0 (U_DigitSplitter_n_30),
        .\slv_reg2_reg[13]_1 (U_DigitSplitter_n_34),
        .\slv_reg2_reg[13]_2 (U_DigitSplitter_n_35),
        .\slv_reg2_reg[13]_3 (U_DigitSplitter_n_36),
        .\slv_reg2_reg[8] (\slv_reg2_reg[8] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

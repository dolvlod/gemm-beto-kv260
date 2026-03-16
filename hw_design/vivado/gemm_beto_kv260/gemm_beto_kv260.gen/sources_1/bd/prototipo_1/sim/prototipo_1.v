//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Fri Mar 13 12:19:00 2026
//Host        : 192 running 64-bit Debian GNU/Linux 13 (trixie)
//Command     : generate_target prototipo_1.bd
//Design      : prototipo_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "prototipo_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=prototipo_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_clkrst_cnt=3,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "prototipo_1.hwdef" *) 
module prototipo_1
   ();

  wire [63:0]gemm_int8_0_m_axi_gmem0_ARADDR;
  wire [1:0]gemm_int8_0_m_axi_gmem0_ARBURST;
  wire [3:0]gemm_int8_0_m_axi_gmem0_ARCACHE;
  wire [0:0]gemm_int8_0_m_axi_gmem0_ARID;
  wire [7:0]gemm_int8_0_m_axi_gmem0_ARLEN;
  wire [1:0]gemm_int8_0_m_axi_gmem0_ARLOCK;
  wire [2:0]gemm_int8_0_m_axi_gmem0_ARPROT;
  wire [3:0]gemm_int8_0_m_axi_gmem0_ARQOS;
  wire gemm_int8_0_m_axi_gmem0_ARREADY;
  wire [2:0]gemm_int8_0_m_axi_gmem0_ARSIZE;
  wire gemm_int8_0_m_axi_gmem0_ARVALID;
  wire [31:0]gemm_int8_0_m_axi_gmem0_RDATA;
  wire [0:0]gemm_int8_0_m_axi_gmem0_RID;
  wire gemm_int8_0_m_axi_gmem0_RLAST;
  wire gemm_int8_0_m_axi_gmem0_RREADY;
  wire [1:0]gemm_int8_0_m_axi_gmem0_RRESP;
  wire gemm_int8_0_m_axi_gmem0_RVALID;
  wire [63:0]gemm_int8_0_m_axi_gmem1_ARADDR;
  wire [1:0]gemm_int8_0_m_axi_gmem1_ARBURST;
  wire [3:0]gemm_int8_0_m_axi_gmem1_ARCACHE;
  wire [0:0]gemm_int8_0_m_axi_gmem1_ARID;
  wire [7:0]gemm_int8_0_m_axi_gmem1_ARLEN;
  wire [1:0]gemm_int8_0_m_axi_gmem1_ARLOCK;
  wire [2:0]gemm_int8_0_m_axi_gmem1_ARPROT;
  wire [3:0]gemm_int8_0_m_axi_gmem1_ARQOS;
  wire gemm_int8_0_m_axi_gmem1_ARREADY;
  wire [2:0]gemm_int8_0_m_axi_gmem1_ARSIZE;
  wire gemm_int8_0_m_axi_gmem1_ARVALID;
  wire [31:0]gemm_int8_0_m_axi_gmem1_RDATA;
  wire [0:0]gemm_int8_0_m_axi_gmem1_RID;
  wire gemm_int8_0_m_axi_gmem1_RLAST;
  wire gemm_int8_0_m_axi_gmem1_RREADY;
  wire [1:0]gemm_int8_0_m_axi_gmem1_RRESP;
  wire gemm_int8_0_m_axi_gmem1_RVALID;
  wire [63:0]gemm_int8_0_m_axi_gmem2_AWADDR;
  wire [1:0]gemm_int8_0_m_axi_gmem2_AWBURST;
  wire [3:0]gemm_int8_0_m_axi_gmem2_AWCACHE;
  wire [0:0]gemm_int8_0_m_axi_gmem2_AWID;
  wire [7:0]gemm_int8_0_m_axi_gmem2_AWLEN;
  wire [1:0]gemm_int8_0_m_axi_gmem2_AWLOCK;
  wire [2:0]gemm_int8_0_m_axi_gmem2_AWPROT;
  wire [3:0]gemm_int8_0_m_axi_gmem2_AWQOS;
  wire gemm_int8_0_m_axi_gmem2_AWREADY;
  wire [2:0]gemm_int8_0_m_axi_gmem2_AWSIZE;
  wire gemm_int8_0_m_axi_gmem2_AWVALID;
  wire [0:0]gemm_int8_0_m_axi_gmem2_BID;
  wire gemm_int8_0_m_axi_gmem2_BREADY;
  wire [1:0]gemm_int8_0_m_axi_gmem2_BRESP;
  wire gemm_int8_0_m_axi_gmem2_BVALID;
  wire [31:0]gemm_int8_0_m_axi_gmem2_WDATA;
  wire gemm_int8_0_m_axi_gmem2_WLAST;
  wire gemm_int8_0_m_axi_gmem2_WREADY;
  wire [3:0]gemm_int8_0_m_axi_gmem2_WSTRB;
  wire gemm_int8_0_m_axi_gmem2_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [48:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [48:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [127:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [127:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [15:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [48:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M01_AXI_ARLEN;
  wire [0:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [3:0]smartconnect_0_M01_AXI_ARQOS;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [48:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [3:0]smartconnect_0_M01_AXI_AWQOS;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [127:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [127:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [15:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [48:0]smartconnect_0_M02_AXI_ARADDR;
  wire [1:0]smartconnect_0_M02_AXI_ARBURST;
  wire [3:0]smartconnect_0_M02_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M02_AXI_ARLEN;
  wire [0:0]smartconnect_0_M02_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M02_AXI_ARPROT;
  wire [3:0]smartconnect_0_M02_AXI_ARQOS;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [48:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M02_AXI_AWLEN;
  wire [0:0]smartconnect_0_M02_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  wire [3:0]smartconnect_0_M02_AXI_AWQOS;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire [2:0]smartconnect_0_M02_AXI_AWSIZE;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [127:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RLAST;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [127:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WLAST;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [15:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [5:0]smartconnect_1_M00_AXI_ARADDR;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [5:0]smartconnect_1_M00_AXI_AWADDR;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [3:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  prototipo_1_gemm_int8_0_1 gemm_int8_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_99M_peripheral_aresetn),
        .m_axi_gmem0_ARADDR(gemm_int8_0_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(gemm_int8_0_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(gemm_int8_0_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(gemm_int8_0_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(gemm_int8_0_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(gemm_int8_0_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(gemm_int8_0_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(gemm_int8_0_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(gemm_int8_0_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARSIZE(gemm_int8_0_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(gemm_int8_0_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWREADY(1'b0),
        .m_axi_gmem0_BID(1'b0),
        .m_axi_gmem0_BRESP({1'b0,1'b0}),
        .m_axi_gmem0_BVALID(1'b0),
        .m_axi_gmem0_RDATA(gemm_int8_0_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RID(gemm_int8_0_m_axi_gmem0_RID),
        .m_axi_gmem0_RLAST(gemm_int8_0_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(gemm_int8_0_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(gemm_int8_0_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(gemm_int8_0_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WREADY(1'b0),
        .m_axi_gmem1_ARADDR(gemm_int8_0_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(gemm_int8_0_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(gemm_int8_0_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(gemm_int8_0_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(gemm_int8_0_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(gemm_int8_0_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(gemm_int8_0_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(gemm_int8_0_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(gemm_int8_0_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARSIZE(gemm_int8_0_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(gemm_int8_0_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BID(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(gemm_int8_0_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(gemm_int8_0_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(gemm_int8_0_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(gemm_int8_0_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(gemm_int8_0_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(gemm_int8_0_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .m_axi_gmem2_ARREADY(1'b0),
        .m_axi_gmem2_AWADDR(gemm_int8_0_m_axi_gmem2_AWADDR),
        .m_axi_gmem2_AWBURST(gemm_int8_0_m_axi_gmem2_AWBURST),
        .m_axi_gmem2_AWCACHE(gemm_int8_0_m_axi_gmem2_AWCACHE),
        .m_axi_gmem2_AWID(gemm_int8_0_m_axi_gmem2_AWID),
        .m_axi_gmem2_AWLEN(gemm_int8_0_m_axi_gmem2_AWLEN),
        .m_axi_gmem2_AWLOCK(gemm_int8_0_m_axi_gmem2_AWLOCK),
        .m_axi_gmem2_AWPROT(gemm_int8_0_m_axi_gmem2_AWPROT),
        .m_axi_gmem2_AWQOS(gemm_int8_0_m_axi_gmem2_AWQOS),
        .m_axi_gmem2_AWREADY(gemm_int8_0_m_axi_gmem2_AWREADY),
        .m_axi_gmem2_AWSIZE(gemm_int8_0_m_axi_gmem2_AWSIZE),
        .m_axi_gmem2_AWVALID(gemm_int8_0_m_axi_gmem2_AWVALID),
        .m_axi_gmem2_BID(gemm_int8_0_m_axi_gmem2_BID),
        .m_axi_gmem2_BREADY(gemm_int8_0_m_axi_gmem2_BREADY),
        .m_axi_gmem2_BRESP(gemm_int8_0_m_axi_gmem2_BRESP),
        .m_axi_gmem2_BVALID(gemm_int8_0_m_axi_gmem2_BVALID),
        .m_axi_gmem2_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem2_RID(1'b0),
        .m_axi_gmem2_RLAST(1'b0),
        .m_axi_gmem2_RRESP({1'b0,1'b0}),
        .m_axi_gmem2_RVALID(1'b0),
        .m_axi_gmem2_WDATA(gemm_int8_0_m_axi_gmem2_WDATA),
        .m_axi_gmem2_WLAST(gemm_int8_0_m_axi_gmem2_WLAST),
        .m_axi_gmem2_WREADY(gemm_int8_0_m_axi_gmem2_WREADY),
        .m_axi_gmem2_WSTRB(gemm_int8_0_m_axi_gmem2_WSTRB),
        .m_axi_gmem2_WVALID(gemm_int8_0_m_axi_gmem2_WVALID),
        .s_axi_control_ARADDR(smartconnect_1_M00_AXI_ARADDR),
        .s_axi_control_ARREADY(smartconnect_1_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(smartconnect_1_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(smartconnect_1_M00_AXI_AWADDR),
        .s_axi_control_AWREADY(smartconnect_1_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(smartconnect_1_M00_AXI_AWVALID),
        .s_axi_control_BREADY(smartconnect_1_M00_AXI_BREADY),
        .s_axi_control_BRESP(smartconnect_1_M00_AXI_BRESP),
        .s_axi_control_BVALID(smartconnect_1_M00_AXI_BVALID),
        .s_axi_control_RDATA(smartconnect_1_M00_AXI_RDATA),
        .s_axi_control_RREADY(smartconnect_1_M00_AXI_RREADY),
        .s_axi_control_RRESP(smartconnect_1_M00_AXI_RRESP),
        .s_axi_control_RVALID(smartconnect_1_M00_AXI_RVALID),
        .s_axi_control_WDATA(smartconnect_1_M00_AXI_WDATA),
        .s_axi_control_WREADY(smartconnect_1_M00_AXI_WREADY),
        .s_axi_control_WSTRB(smartconnect_1_M00_AXI_WSTRB),
        .s_axi_control_WVALID(smartconnect_1_M00_AXI_WVALID));
  prototipo_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  prototipo_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(smartconnect_0_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_0_M01_AXI_AWQOS),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .M02_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arqos(smartconnect_0_M02_AXI_ARQOS),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(smartconnect_0_M02_AXI_AWQOS),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .S00_AXI_araddr(gemm_int8_0_m_axi_gmem0_ARADDR),
        .S00_AXI_arburst(gemm_int8_0_m_axi_gmem0_ARBURST),
        .S00_AXI_arcache(gemm_int8_0_m_axi_gmem0_ARCACHE),
        .S00_AXI_arid(gemm_int8_0_m_axi_gmem0_ARID),
        .S00_AXI_arlen(gemm_int8_0_m_axi_gmem0_ARLEN),
        .S00_AXI_arlock(gemm_int8_0_m_axi_gmem0_ARLOCK[0]),
        .S00_AXI_arprot(gemm_int8_0_m_axi_gmem0_ARPROT),
        .S00_AXI_arqos(gemm_int8_0_m_axi_gmem0_ARQOS),
        .S00_AXI_arready(gemm_int8_0_m_axi_gmem0_ARREADY),
        .S00_AXI_arsize(gemm_int8_0_m_axi_gmem0_ARSIZE),
        .S00_AXI_arvalid(gemm_int8_0_m_axi_gmem0_ARVALID),
        .S00_AXI_rdata(gemm_int8_0_m_axi_gmem0_RDATA),
        .S00_AXI_rid(gemm_int8_0_m_axi_gmem0_RID),
        .S00_AXI_rlast(gemm_int8_0_m_axi_gmem0_RLAST),
        .S00_AXI_rready(gemm_int8_0_m_axi_gmem0_RREADY),
        .S00_AXI_rresp(gemm_int8_0_m_axi_gmem0_RRESP),
        .S00_AXI_rvalid(gemm_int8_0_m_axi_gmem0_RVALID),
        .S01_AXI_araddr(gemm_int8_0_m_axi_gmem1_ARADDR),
        .S01_AXI_arburst(gemm_int8_0_m_axi_gmem1_ARBURST),
        .S01_AXI_arcache(gemm_int8_0_m_axi_gmem1_ARCACHE),
        .S01_AXI_arid(gemm_int8_0_m_axi_gmem1_ARID),
        .S01_AXI_arlen(gemm_int8_0_m_axi_gmem1_ARLEN),
        .S01_AXI_arlock(gemm_int8_0_m_axi_gmem1_ARLOCK[0]),
        .S01_AXI_arprot(gemm_int8_0_m_axi_gmem1_ARPROT),
        .S01_AXI_arqos(gemm_int8_0_m_axi_gmem1_ARQOS),
        .S01_AXI_arready(gemm_int8_0_m_axi_gmem1_ARREADY),
        .S01_AXI_arsize(gemm_int8_0_m_axi_gmem1_ARSIZE),
        .S01_AXI_arvalid(gemm_int8_0_m_axi_gmem1_ARVALID),
        .S01_AXI_rdata(gemm_int8_0_m_axi_gmem1_RDATA),
        .S01_AXI_rid(gemm_int8_0_m_axi_gmem1_RID),
        .S01_AXI_rlast(gemm_int8_0_m_axi_gmem1_RLAST),
        .S01_AXI_rready(gemm_int8_0_m_axi_gmem1_RREADY),
        .S01_AXI_rresp(gemm_int8_0_m_axi_gmem1_RRESP),
        .S01_AXI_rvalid(gemm_int8_0_m_axi_gmem1_RVALID),
        .S02_AXI_awaddr(gemm_int8_0_m_axi_gmem2_AWADDR),
        .S02_AXI_awburst(gemm_int8_0_m_axi_gmem2_AWBURST),
        .S02_AXI_awcache(gemm_int8_0_m_axi_gmem2_AWCACHE),
        .S02_AXI_awid(gemm_int8_0_m_axi_gmem2_AWID),
        .S02_AXI_awlen(gemm_int8_0_m_axi_gmem2_AWLEN),
        .S02_AXI_awlock(gemm_int8_0_m_axi_gmem2_AWLOCK[0]),
        .S02_AXI_awprot(gemm_int8_0_m_axi_gmem2_AWPROT),
        .S02_AXI_awqos(gemm_int8_0_m_axi_gmem2_AWQOS),
        .S02_AXI_awready(gemm_int8_0_m_axi_gmem2_AWREADY),
        .S02_AXI_awsize(gemm_int8_0_m_axi_gmem2_AWSIZE),
        .S02_AXI_awvalid(gemm_int8_0_m_axi_gmem2_AWVALID),
        .S02_AXI_bid(gemm_int8_0_m_axi_gmem2_BID),
        .S02_AXI_bready(gemm_int8_0_m_axi_gmem2_BREADY),
        .S02_AXI_bresp(gemm_int8_0_m_axi_gmem2_BRESP),
        .S02_AXI_bvalid(gemm_int8_0_m_axi_gmem2_BVALID),
        .S02_AXI_wdata(gemm_int8_0_m_axi_gmem2_WDATA),
        .S02_AXI_wlast(gemm_int8_0_m_axi_gmem2_WLAST),
        .S02_AXI_wready(gemm_int8_0_m_axi_gmem2_WREADY),
        .S02_AXI_wstrb(gemm_int8_0_m_axi_gmem2_WSTRB),
        .S02_AXI_wvalid(gemm_int8_0_m_axi_gmem2_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  prototipo_1_smartconnect_0_1 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .S01_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S01_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S01_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S01_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S01_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S01_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S01_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S01_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S01_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S01_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S01_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .S01_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S01_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S01_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S01_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S01_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S01_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S01_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S01_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S01_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S01_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S01_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S01_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .S01_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S01_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S01_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S01_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S01_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S01_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S01_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S01_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S01_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S01_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S01_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S01_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S01_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S01_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S01_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S01_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  prototipo_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr(smartconnect_0_M00_AXI_ARADDR),
        .saxigp2_arburst(smartconnect_0_M00_AXI_ARBURST),
        .saxigp2_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(smartconnect_0_M00_AXI_ARLEN),
        .saxigp2_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .saxigp2_arprot(smartconnect_0_M00_AXI_ARPROT),
        .saxigp2_arqos(smartconnect_0_M00_AXI_ARQOS),
        .saxigp2_arready(smartconnect_0_M00_AXI_ARREADY),
        .saxigp2_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .saxigp2_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .saxigp2_awburst(smartconnect_0_M00_AXI_AWBURST),
        .saxigp2_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(smartconnect_0_M00_AXI_AWLEN),
        .saxigp2_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .saxigp2_awprot(smartconnect_0_M00_AXI_AWPROT),
        .saxigp2_awqos(smartconnect_0_M00_AXI_AWQOS),
        .saxigp2_awready(smartconnect_0_M00_AXI_AWREADY),
        .saxigp2_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .saxigp2_bready(smartconnect_0_M00_AXI_BREADY),
        .saxigp2_bresp(smartconnect_0_M00_AXI_BRESP),
        .saxigp2_bvalid(smartconnect_0_M00_AXI_BVALID),
        .saxigp2_rdata(smartconnect_0_M00_AXI_RDATA),
        .saxigp2_rlast(smartconnect_0_M00_AXI_RLAST),
        .saxigp2_rready(smartconnect_0_M00_AXI_RREADY),
        .saxigp2_rresp(smartconnect_0_M00_AXI_RRESP),
        .saxigp2_rvalid(smartconnect_0_M00_AXI_RVALID),
        .saxigp2_wdata(smartconnect_0_M00_AXI_WDATA),
        .saxigp2_wlast(smartconnect_0_M00_AXI_WLAST),
        .saxigp2_wready(smartconnect_0_M00_AXI_WREADY),
        .saxigp2_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .saxigp2_wvalid(smartconnect_0_M00_AXI_WVALID),
        .saxigp3_araddr(smartconnect_0_M01_AXI_ARADDR),
        .saxigp3_arburst(smartconnect_0_M01_AXI_ARBURST),
        .saxigp3_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(smartconnect_0_M01_AXI_ARLEN),
        .saxigp3_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .saxigp3_arprot(smartconnect_0_M01_AXI_ARPROT),
        .saxigp3_arqos(smartconnect_0_M01_AXI_ARQOS),
        .saxigp3_arready(smartconnect_0_M01_AXI_ARREADY),
        .saxigp3_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .saxigp3_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .saxigp3_awburst(smartconnect_0_M01_AXI_AWBURST),
        .saxigp3_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen(smartconnect_0_M01_AXI_AWLEN),
        .saxigp3_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .saxigp3_awprot(smartconnect_0_M01_AXI_AWPROT),
        .saxigp3_awqos(smartconnect_0_M01_AXI_AWQOS),
        .saxigp3_awready(smartconnect_0_M01_AXI_AWREADY),
        .saxigp3_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .saxigp3_bready(smartconnect_0_M01_AXI_BREADY),
        .saxigp3_bresp(smartconnect_0_M01_AXI_BRESP),
        .saxigp3_bvalid(smartconnect_0_M01_AXI_BVALID),
        .saxigp3_rdata(smartconnect_0_M01_AXI_RDATA),
        .saxigp3_rlast(smartconnect_0_M01_AXI_RLAST),
        .saxigp3_rready(smartconnect_0_M01_AXI_RREADY),
        .saxigp3_rresp(smartconnect_0_M01_AXI_RRESP),
        .saxigp3_rvalid(smartconnect_0_M01_AXI_RVALID),
        .saxigp3_wdata(smartconnect_0_M01_AXI_WDATA),
        .saxigp3_wlast(smartconnect_0_M01_AXI_WLAST),
        .saxigp3_wready(smartconnect_0_M01_AXI_WREADY),
        .saxigp3_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .saxigp3_wvalid(smartconnect_0_M01_AXI_WVALID),
        .saxigp4_araddr(smartconnect_0_M02_AXI_ARADDR),
        .saxigp4_arburst(smartconnect_0_M02_AXI_ARBURST),
        .saxigp4_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arlen(smartconnect_0_M02_AXI_ARLEN),
        .saxigp4_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .saxigp4_arprot(smartconnect_0_M02_AXI_ARPROT),
        .saxigp4_arqos(smartconnect_0_M02_AXI_ARQOS),
        .saxigp4_arready(smartconnect_0_M02_AXI_ARREADY),
        .saxigp4_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .saxigp4_aruser(1'b0),
        .saxigp4_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .saxigp4_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .saxigp4_awburst(smartconnect_0_M02_AXI_AWBURST),
        .saxigp4_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_awlen(smartconnect_0_M02_AXI_AWLEN),
        .saxigp4_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .saxigp4_awprot(smartconnect_0_M02_AXI_AWPROT),
        .saxigp4_awqos(smartconnect_0_M02_AXI_AWQOS),
        .saxigp4_awready(smartconnect_0_M02_AXI_AWREADY),
        .saxigp4_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .saxigp4_awuser(1'b0),
        .saxigp4_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .saxigp4_bready(smartconnect_0_M02_AXI_BREADY),
        .saxigp4_bresp(smartconnect_0_M02_AXI_BRESP),
        .saxigp4_bvalid(smartconnect_0_M02_AXI_BVALID),
        .saxigp4_rdata(smartconnect_0_M02_AXI_RDATA),
        .saxigp4_rlast(smartconnect_0_M02_AXI_RLAST),
        .saxigp4_rready(smartconnect_0_M02_AXI_RREADY),
        .saxigp4_rresp(smartconnect_0_M02_AXI_RRESP),
        .saxigp4_rvalid(smartconnect_0_M02_AXI_RVALID),
        .saxigp4_wdata(smartconnect_0_M02_AXI_WDATA),
        .saxigp4_wlast(smartconnect_0_M02_AXI_WLAST),
        .saxigp4_wready(smartconnect_0_M02_AXI_WREADY),
        .saxigp4_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .saxigp4_wvalid(smartconnect_0_M02_AXI_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp2_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

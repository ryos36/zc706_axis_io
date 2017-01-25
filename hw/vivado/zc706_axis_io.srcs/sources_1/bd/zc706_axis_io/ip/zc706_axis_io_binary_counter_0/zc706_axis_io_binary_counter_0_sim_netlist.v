// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue Jan 24 18:01:55 2017
// Host        : Persimmon running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               I:/TSDI/sdsoc_v2016_3/zc706_axis_io/hw/vivado/zc706_axis_io.srcs/sources_1/bd/zc706_axis_io/ip/zc706_axis_io_binary_counter_0/zc706_axis_io_binary_counter_0_sim_netlist.v
// Design      : zc706_axis_io_binary_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zc706_axis_io_binary_counter_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module zc706_axis_io_binary_counter_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  zc706_axis_io_binary_counter_0_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module zc706_axis_io_binary_counter_0_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [31:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  zc706_axis_io_binary_counter_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
U60gt/ZyRb3KRYWUU5/M+Ey5bfot9pU3sZ31GnGFTpDYARFOjP74bpN9/i6JIy8gblVI200ImdMB
qbEB/qdNNQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MGlYO/wsfPkFT+uZldjrP+N/MIdHLGtYmR17i2wpFGLX9dGYEfDgDJv0gg/6QjSoQKbJqXLksfPk
VN5ed+CVieUO7GP4jBYbvmlaM4qcQwdh6R+fRYmpSpYxtVo+OF3eoIvxk8tC2GLm6vEuqAghVp5S
66nX/A0QDxhu4Sb5kZQ=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OI02hka8fd5bCBtdgh3iGodlxAsMdaEHyBuf62AFdeNgSslnwcfE4+h7YV/7+f5q+sGa5twPSl6Y
6ceyjF9yw+hfri3qUD6scH9klpmlsDmFVd1Wz89J+CWlxRZ2b8kBp9VVJD1Q+V5HbA6onC9iCUO1
mofTbjgy295+spi8ww8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D3Q8Zx6fdgrOZ643DSqgu0ziGRnWDBfwrnIMNTQqd5Rr4tTVfcfEyz3pYd61QCEcldr8A+V5RzIk
l8CbVPUBA12AsKCgnB4tIoJgy4Vn+7LWJDQuPhk2YqL5DLwJvVbzWYvCnh/YVnPKOJqzxsAJlIvn
eiO7IpseltN0npnTpi9p8BfcG7dHGs7DR1ptrpui7uK6Jpxn7vc5eO/QqGs3SiXO5oWIiavTaD1C
2AD+oN3w0A67bLSBI7GGAErchrdP216lCMTqpWDhguotFInjxUPyglbxK2wZmifzg8d1PTNMhE+h
joX2dWqWkH4nltcPOD72mO5/BEUaF3805LxOjA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
noxsQ7Rr0JfSSiLZieCsX7SVzI1LXnO/9Jr2Pa2cNhPjCy+cabeI6RijLjhh1gw0NC7IVdgVv8yV
7z/b9YflPwzMwTsBs/lGb+2HSHUtZAgRdJ1tkrROGADLIVb/G4rLgvEJFuAdDfUZdjayUILfM4dB
skBJz5Rt1thMSHavE0c5vJ6UfhSGNyBlKsIKVmkfgoqtA5MEwrnUgfs8CZzpHx57u1keeAwINHWA
FmflZsNNg3GT8GLEmjmDVMk19VLHOk1ANcTbngE4jT2+jOZeXbwLV480OybvMLPTKo85L87d8sLF
KE92k9/izwsFNYLkkSAxcY52pCycqFIxU1n/WQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iMuZMDjk7+maZX8N8Yi4SS+47sSBWmMjkfuaHzGi1QNJcyr7OiCP91lOXdLF6CiNNYWwug8+7VXF
JWVufqMLaLUb5m4ZOfvRPDnJev0xT5CwkZ9C60mB0KEi2HYV59ZzCVLHgezmAmziW96KZxe5OIDY
NTSErkkm63/8mK7zkQKzeX51nGSyABxVEJimSeRtJn5swdBudB3uwU7vjYLeEE+U73DCymKSsoz0
2D8+kzFnJyVaE8YGMLYHVx+Tc9v+KP9sL1dBZYYxiIcq/eTNfOeJ7FsxDcOk/PZOVHwmqGSgJ9GN
aL55bYE/+PHbRTckh8OfHVwUrd7kweJsMdqXdQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Cu1/XWpUeXugsJczq6dxnaKnuYvQt4fYq7lU0PDo1xbwfxsMu0oRLVHIANBnBP4B/6WelZbfrVzJ
SuKGTwSyyh1keU1vl9ap76xfyMK+fRv3oraswhS2VeWe3Qxzxw9T0nbORBA4tb8nt9RGgstMURaw
BN6LuCq7oYvQ9QR/N2B3Vl2XN82nrR6Z3zCi9Ys4TDe6Kd9LTqCIAjw+BeeRhChwS9RDejGcHpsn
EBRNwmyOw/zDwpxZR05W/W3/6EqxNJW89hCigR6PDWEZGzB3PWalvTIHB3DJBilZM3wDs9x9uT/3
09HtKYmYPSdGh6Mm+/cKCZZMR5YDpiQgKh+4sw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
AbXbwjR7VXC1IDiR2kI1Nj2gvzkZ/A1ynthcO4ZzoyjlYBLcuiDpOSBBRX7jwuGP/H/eZs8AbvHi
Dg/4D0eYaZBg0pVfInnxNGnG9udbT5YaL7VWmsds0u5pEJKx7pNZoXGgQ8ao/XRt2dNmcW1hUTAt
n2fgI2cGYou0Pb50aYoToEX6r2gIeRk9MmALm9geotZyHxw2bhRSWbLuBTx+xEOKKlYbWufqVXVv
bEfVF1X0nPx0x+E62yHXzkCz3RJnjmeHHOZGmC469tEaUo/LLw1Nhy+T8+2H9XgGik7bCt0CKp9p
ip2SfMiEL6F1czxhuqhZCki8T9xjV9fFWyNTRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17376)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif

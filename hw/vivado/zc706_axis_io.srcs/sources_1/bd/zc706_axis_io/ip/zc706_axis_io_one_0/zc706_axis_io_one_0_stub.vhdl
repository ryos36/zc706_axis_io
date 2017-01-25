-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue Jan 24 18:01:51 2017
-- Host        : Persimmon running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               I:/TSDI/sdsoc_v2016_3/zc706_axis_io/hw/vivado/zc706_axis_io.srcs/sources_1/bd/zc706_axis_io/ip/zc706_axis_io_one_0/zc706_axis_io_one_0_stub.vhdl
-- Design      : zc706_axis_io_one_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zc706_axis_io_one_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end zc706_axis_io_one_0;

architecture stub of zc706_axis_io_one_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
begin
end;

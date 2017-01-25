-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue Jan 24 18:01:51 2017
-- Host        : Persimmon running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               I:/TSDI/sdsoc_v2016_3/zc706_axis_io/hw/vivado/zc706_axis_io.srcs/sources_1/bd/zc706_axis_io/ip/zc706_axis_io_one_0/zc706_axis_io_one_0_sim_netlist.vhdl
-- Design      : zc706_axis_io_one_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zc706_axis_io_one_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zc706_axis_io_one_0 : entity is true;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zc706_axis_io_one_0 : entity is "yes";
end zc706_axis_io_one_0;

architecture STRUCTURE of zc706_axis_io_one_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

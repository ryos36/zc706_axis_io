-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue Jan 24 18:01:52 2017
-- Host        : Persimmon running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               I:/TSDI/sdsoc_v2016_3/zc706_axis_io/hw/vivado/zc706_axis_io.srcs/sources_1/bd/zc706_axis_io/ip/zc706_axis_io_irq_concat_0/zc706_axis_io_irq_concat_0_sim_netlist.vhdl
-- Design      : zc706_axis_io_irq_concat_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zc706_axis_io_irq_concat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zc706_axis_io_irq_concat_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zc706_axis_io_irq_concat_0 : entity is "zc706_axis_io_irq_concat_0,xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zc706_axis_io_irq_concat_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zc706_axis_io_irq_concat_0 : entity is "xlconcat,Vivado 2016.3_sdx";
end zc706_axis_io_irq_concat_0;

architecture STRUCTURE of zc706_axis_io_irq_concat_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;

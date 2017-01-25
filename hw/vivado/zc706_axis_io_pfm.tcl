# zc706_axis_io_pfm.tcl --
#
# This file uses the SDSoC Tcl Platform API to create the
# zc706_axis_io hardware platform file
#
# Copyright (c) 2016 Xilinx, Inc.
#

set pfm [sdsoc::create_pfm zc706_axis_io.hpfm]
sdsoc::pfm_name        $pfm "xilinx.com" "xd" "zc706_axis_io" "1.0"
sdsoc::pfm_description $pfm "Zynq ZC706 Board With Direct I/O"
sdsoc::pfm_clock       $pfm FCLK_CLK0 ps7 0 false psr0
sdsoc::pfm_clock       $pfm FCLK_CLK1 ps7 1 true psr1
#sdsoc::pfm_axi_port    $pfm M_AXI_GP0 ps7 M_AXI_GP
sdsoc::pfm_axi_port    $pfm M_AXI_GP1 ps7 M_AXI_GP
sdsoc::pfm_axi_port    $pfm S_AXI_ACP ps7 S_AXI_ACP
sdsoc::pfm_axi_port    $pfm S_AXI_HP0 ps7 S_AXI_HP
sdsoc::pfm_axi_port    $pfm S_AXI_HP1 ps7 S_AXI_HP
sdsoc::pfm_axi_port    $pfm S_AXI_HP2 ps7 S_AXI_HP
sdsoc::pfm_axi_port    $pfm S_AXI_HP3 ps7 S_AXI_HP
sdsoc::pfm_axis_port   $pfm M_AXIS stream_fifo M_AXIS
for {set i 0} {$i < 16} {incr i} {
  sdsoc::pfm_irq       $pfm In$i irq_concat
}
sdsoc::generate_hw_pfm $pfm

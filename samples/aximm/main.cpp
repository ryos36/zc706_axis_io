/*
(c) Copyright 2013 - 2016 Xilinx, Inc. All rights reserved. 

This file contains confidential and proprietary information of Xilinx, Inc. and
is protected under U.S. and international copyright and other intellectual
property laws.

DISCLAIMER 
This disclaimer is not a license and does not grant any rights to the materials
distributed herewith. Except as otherwise provided in a valid license issued to
you by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE
MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY
DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR
FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether
in contract or tort, including negligence, or under any other theory of
liability) for any loss or damage of any kind or nature related to, arising
under or in connection with these materials, including for any direct, or any
indirect, special, incidental, or consequential loss or damage (including loss
of data, profits, goodwill, or any type of loss or damage suffered as a result
of any action brought by a third party) even if such damage or loss was
reasonably foreseeable or Xilinx had been advised of the possibility of the
same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-safe, or for use in any
application requiring fail-safe performance, such as life-support or safety
devices or systems, Class III medical devices, nuclear facilities, applications
related to the deployment of airbags, or any other applications that could lead
to death, personal injury, or severe property or environmental damage
(individually and collectively, "Critical Applications"). Customer assumes the
sole risk and liability of any use of Xilinx products in Critical Applications,
subject only to applicable laws and regulations governing limitations on product
liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT
ALL TIMES. 
*/

#include <stdio.h>
#include "sds_lib.h"
#include "zc702_axis_io.h"

#define BUF_SIZE 1024
#define NUM_BUFFERS 4

// s2mm "DMA" accelerator
#pragma SDS data mem_attribute (buf:CACHEABLE|PHYSICAL_CONTIGUOUS)
#pragma SDS data zero_copy(buf)
int s2mm_data_copy(unsigned *fifo, unsigned buf[BUF_SIZE]) 
{
#pragma HLS interface axis port=fifo
     for(int i=0; i<BUF_SIZE; i++) {
#pragma HLS pipeline
          buf[i] = *fifo;
     }
     return 0;
}

// This function's data flow defines the accelerator network
void s2mm_data_copy_wrapper(unsigned *buf) 
{
     unsigned rbuf0[1];
     pf_read_stream(rbuf0);
     s2mm_data_copy(rbuf0,buf);
}


// Check data buffers for dropped samples due to platform FIFO overrun
bool check(unsigned *bufs[]) 
{
     bool error = false;
     for(int i=0; i<NUM_BUFFERS; i++) {
          if(bufs[i][0] != (bufs[i][BUF_SIZE-1] - BUF_SIZE + 1)) {
               printf("ERROR: dropped %u elements in buffer %u\n\r",
                      bufs[i][BUF_SIZE-1]-bufs[i][0], i);
               error = true;
          }
     }
     for(int i=0; i<NUM_BUFFERS-1; i++) {
          if(bufs[i][BUF_SIZE-1] != (bufs[i+1][0] - 1)) {
               printf("ERROR: dropped %u elements between buffers %u and %u\n\r",
                      bufs[i+1][0]-bufs[i][BUF_SIZE-1], i,i+1);
               error = true;
          }
     }
     return error;
}

int main() 
{
     unsigned *bufs[NUM_BUFFERS];
     bool error = false;
     
     for(int i=0; i<NUM_BUFFERS; i++) {
          bufs[i] = (unsigned*) sds_alloc(BUF_SIZE * sizeof(unsigned));
     }
     
     // Flush the platform FIFO of start-up garbage
     s2mm_data_copy_wrapper(bufs[0]);
     
     for(int i=0; i<NUM_BUFFERS; i++) {
          s2mm_data_copy_wrapper(bufs[i]);
     }
     
     error = check(bufs);

     printf("TEST %s\n\r", (error ? "FAILED" : "PASSED"));
     
     for(int i=0; i<NUM_BUFFERS; i++) {
          sds_free(bufs[i]);
     }
     return 0;
}

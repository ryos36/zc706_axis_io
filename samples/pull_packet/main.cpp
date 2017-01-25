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

#include <stdlib.h>
#include <iostream>
#include <vector>
#include <queue>
#include <cassert>
#include "sds_lib.h"
#include "zc702_axis_io.h"

#define BUF_COUNT 32
#define BUF_SIZE (64 * 1024)
#define MAX_PENDING 4
#define IP_ELEM_TYPE unsigned

#pragma SDS data sys_port(outBuf:ACP)
#pragma SDS data zero_copy(outBuf[0:bufSize])
void PullPacket(IP_ELEM_TYPE* input, IP_ELEM_TYPE* outBuf, int bufSize, int& validSize)
{
#pragma HLS interface axis port=input
	int i;
	for(i = 0; i < bufSize; i++)
	{
#pragma HLS pipeline ii=1
		outBuf[i] = input[i];
	}
	validSize = i;
}

class Packet
{
public:
	IP_ELEM_TYPE* buffer;
	int bufSize;
	int validSize;

	Packet(int s)
	{
		buffer = (IP_ELEM_TYPE*)sds_alloc(sizeof(IP_ELEM_TYPE) * s);
		if(!buffer)
		{
			std::cout << "Failed to allocate buffer" << std::endl;
			exit(-1); //this is unacceptable in this test.  
                                  // A real application should catch & recover.
		}
		bufSize = s;
		validSize = 0;
	}
	~Packet()
	{
		if(buffer)
			sds_free(buffer);
		buffer = NULL;
	}
	void ClearPacket()
	{
		validSize = 0;
	}
};

void Usage()
{
	std::cout << "Please specify as a command line arg the number of packets to evaluate" 
                  << std::endl;
}

int main(int argCount, char** argSet)
{
	if(argCount != 2)
	{
		Usage();
		return -1;
	}

	int iterations = atoi(argSet[1]);
	if(iterations < 1)
	{
		Usage();
		return -1;
	}
	std::cout << "Running for " << iterations << " packets" << std::endl;
	std::queue<Packet*> emptyBuffers, fullBuffers, fillingBuffers, calcBuffers;
	for(int i = 0; i < BUF_COUNT; i++)
	{
		emptyBuffers.push(new Packet(BUF_SIZE));
	}
	int pendingReads = 0;
	int contiguousPackets = 0;
	int packetsProcessed = 0;
	IP_ELEM_TYPE lastPacketEnding = 0;
	IP_ELEM_TYPE* fifoLink = (IP_ELEM_TYPE*)sds_alloc(sizeof(IP_ELEM_TYPE) * BUF_SIZE);
	while(packetsProcessed < iterations)
	{
		//Pull finished reads
		while(pendingReads && sds_try_wait(1))
		{
			assert(!fillingBuffers.empty());
			Packet* p = fillingBuffers.front();
			fillingBuffers.pop();
			fullBuffers.push(p);
			pendingReads--;
		}
		//enqueue reads
		while(pendingReads < MAX_PENDING)
		{
			if(emptyBuffers.empty())
			{
				std::cout << "Ran out of buffers, aborting" << std::endl;
				exit(-1);
			}
			Packet* p = emptyBuffers.front();
			emptyBuffers.pop();
			pf_read_stream(fifoLink);
#pragma SDS async(1)
			PullPacket(fifoLink, p->buffer, p->bufSize, p->validSize);
			fillingBuffers.push(p);
			pendingReads++;
		}

		//check finished processing
		while(!fullBuffers.empty())
		{
			bool isContiguous = true;
			Packet* p = fullBuffers.front();
			assert(p->validSize == p->bufSize);
			fullBuffers.pop();
			IP_ELEM_TYPE first = p->buffer[0];
			IP_ELEM_TYPE last = p->buffer[p->validSize - 1];
			if((int)(last - first) != p->validSize - 1)
			{
				isContiguous = false;
				std::cout << "----Data loss detected internal to packet " 
					<< packetsProcessed << ", values " << first 
					<< "-" << last << std::endl;
			}
			if(lastPacketEnding > 0 && lastPacketEnding + 1 != first)
			{
				isContiguous = false;
				std::cout << "----Data loss detected before packet " 
					<< packetsProcessed << ", values " 
					<< lastPacketEnding << "-" << first << std::endl;
			}
			lastPacketEnding = last;
			emptyBuffers.push(p);
			packetsProcessed++;
			if(isContiguous) contiguousPackets++;
		}
	}
	for(int i = 0; i < pendingReads; i++)
	{
		while(!sds_try_wait(1));
	}
	std::cout << "RESULTS:" << contiguousPackets << " out of "
		<< packetsProcessed << " were found to be contiguous" << std::endl;
	return 0;
}

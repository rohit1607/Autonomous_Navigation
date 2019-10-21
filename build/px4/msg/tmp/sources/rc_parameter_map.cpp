/****************************************************************************
 *
 *   Copyright (C) 2013-2016 PX4 Development Team. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name PX4 nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ****************************************************************************/

/* Auto-generated by genmsg_cpp from file rc_parameter_map.msg */


#include <inttypes.h>
#include <px4_log.h>
#include <px4_defines.h>
#include <uORB/topics/rc_parameter_map.h>
#include <drivers/drv_hrt.h>
#include <lib/drivers/device/Device.hpp>

constexpr char __orb_rc_parameter_map_fields[] = "uint64_t timestamp;int32_t[3] param_index;float[3] scale;float[3] value0;float[3] value_min;float[3] value_max;bool[3] valid;char[51] param_id;uint8_t[6] _padding0;";

ORB_DEFINE(rc_parameter_map, struct rc_parameter_map_s, 122, __orb_rc_parameter_map_fields);


void print_message(const rc_parameter_map_s& message)
{
	PX4_INFO_RAW(" rc_parameter_map_s\n");
	if (message.timestamp != 0) {
		PX4_INFO_RAW("\ttimestamp: %" PRIu64 "  (%.6f seconds ago)\n", message.timestamp, hrt_elapsed_time(&message.timestamp) / 1e6);
	} else {
		PX4_INFO_RAW("\n");
	}
	PX4_INFO_RAW("\tparam_index: [%" PRId32 ", %" PRId32 ", %" PRId32 "]\n", message.param_index[0], message.param_index[1], message.param_index[2]);
	PX4_INFO_RAW("\tscale: [%.4f, %.4f, %.4f]\n", (double)message.scale[0], (double)message.scale[1], (double)message.scale[2]);
	PX4_INFO_RAW("\tvalue0: [%.4f, %.4f, %.4f]\n", (double)message.value0[0], (double)message.value0[1], (double)message.value0[2]);
	PX4_INFO_RAW("\tvalue_min: [%.4f, %.4f, %.4f]\n", (double)message.value_min[0], (double)message.value_min[1], (double)message.value_min[2]);
	PX4_INFO_RAW("\tvalue_max: [%.4f, %.4f, %.4f]\n", (double)message.value_max[0], (double)message.value_max[1], (double)message.value_max[2]);
	PX4_INFO_RAW("\tvalid: [%u, %u, %u]\n", message.valid[0], message.valid[1], message.valid[2]);
	PX4_INFO_RAW("\tparam_id: \"%.51s\" \n", message.param_id);
	
}
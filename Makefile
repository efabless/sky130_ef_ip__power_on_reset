# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

IP_ROOT?=$(PWD)/dependencies

EFABLESS_URL=git@github.com:efabless
OPENCIRCUITDESIGN_URL=git@github.com:RTimothyEdwards

# This repo puts the POR, LDO, and Bandgaps together for complete subsystem testing 
CMOSVREF_IP=sky130_ak_ip__cmos_vref
LDO_IP=sky130_am_ip__ldo_01v8
CW_IP=sky130_cw_ip
Analog_SWITCHES_IP=sky130_ef_ip__analog_switches
POR_IP=sky130_sw_ip__bgrref_por


# Use "make get_ip_blocks" to retrieve project dependencies

.PHONY: get_ip_blocks
get_ip_blocks: check_dependencies
	@if [ ! -d "$(IP_ROOT)/$(CMOSVREF_IP)" ]; then \
		git clone --depth=1 \
			$(EFABLESS_URL)/$(CMOSVREF_IP) \
			$(IP_ROOT)/$(CMOSVREF_IP) ; \
	fi
	@if [ ! -d "$(IP_ROOT)/$(LDO_IP)" ]; then \
		git clone --depth=1 \
			$(EFABLESS_URL)/$(LDO_IP) \
			$(IP_ROOT)/$(LDO_IP) ; \
	fi
	@if [ ! -d "$(IP_ROOT)/$(CW_IP)" ]; then \
		git clone --depth=1 \
			$(EFABLESS_URL)/$(CW_IP) \
			$(IP_ROOT)/$(CW_IP) ; \
	fi
	@if [ ! -d "$(IP_ROOT)/$(Analog_SWITCHES_IP)" ]; then \
		git clone --depth=1 \
			$(OPENCIRCUITDESIGN_URL)/$(Analog_SWITCHES_IP) \
			$(IP_ROOT)/$(Analog_SWITCHES_IP) ; \
	fi
	@if [ ! -d "$(IP_ROOT)/$(POR_IP)" ]; then \
		git clone --depth=1 \
			$(EFABLESS_URL)/$(POR_IP) \
			$(IP_ROOT)/$(POR_IP) ; \
	fi
	@echo "Done!"


.PHONY: check_dependencies
check_dependencies:
	@if [ ! -d "$(PWD)/dependencies" ]; then \
		mkdir $(PWD)/dependencies; \
	fi


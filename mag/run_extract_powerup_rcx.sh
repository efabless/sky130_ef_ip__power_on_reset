#! /bin/bash

project=powerup_subsystem

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=sky130A} > /dev/null

magic -dnull -noconsole -rcfile $PDK_ROOT/$PDK/libs.tech/magic/sky130A.magicrc << EOF
load $project
select top cell
flatten ${project}_flat
load ${project}_flat
cellname delete ${project}
cellname rename ${project}_flat ${project}
select top cell
# Order ports according to the schematic
# readspice ../netlist/schematic/${project}.spice
# Readspice may not return to the top level
load $project
select top cell
extract path extfiles
extract all
ext2sim labels on
ext2sim -p extfiles
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0.1
ext2spice extresist on
ext2spice -p extfiles -o ../netlist/rcx/${project}.spice
quit -noprompt
EOF
rm -rf extfiles
rm -f ${project}.nodes
rm -f ${project}.sim
exit 0


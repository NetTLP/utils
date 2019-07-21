#!/bin/bash

NCPU=$((`nproc --all` - 1))

MODE="performance"

for i in $(seq 0 ${NCPU}); do
	cpufreq-set --cpu $i --governor ${MODE};
done

sleep 1

cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor


#!/bin/bash

CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
CPU_INFO=$(ps -eo pcpu | awk 'BEGIN { sum = 0 } { sum += $1 } END { print sum }')
CPU_USAGE=$(echo "$CPU_INFO / $CORE_COUNT" | bc)

sketchybar --set $NAME label="${CPU_USAGE}%"

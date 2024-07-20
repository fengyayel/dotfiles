#!/bin/sh
# Simple script to show the cpu temp formatted to be shown in polybar

# temp=$(sensors | grep "Tctl" | sed "s/Tctl: *+//;s/°C *//")
temp=$(sensors | grep "Package id 0" | awk '{print $4}' | sed 's/+//;s/°C//')
if [ 1 -eq "$(echo "$temp > 80" | bc)" ]; then
    printf "%%{F#BF616A} "
elif [ 1 -eq "$(echo "$temp > 60" | bc)" ]; then
    printf "%%{F#e9b189} ";
elif [ 1 -eq "$(echo "$temp > 15" | bc)" ]; then
    printf "%%{F#F3A3BC} ";    
fi
echo "$temp"°C

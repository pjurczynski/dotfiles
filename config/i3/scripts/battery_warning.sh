#!/bin/bash

BATINFO=`upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | cut -f 2 -d ":" | tr -d '[:space:]' | tr -d '%'`
if [[ $BATINFO < 15 ]] ; then
  DISPLAY=:0.0 /usr/bin/notify-send "low battery $BATINFO"
fi

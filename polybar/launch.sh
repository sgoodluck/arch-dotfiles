#!/usr/bin/env bash

# Terminate running bar instances 
polybar-msg cmd quit

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi

#Launch bar1 and bar 2
#echo "---" | tee -a /tmp/polybar.log /tmp/polybar.log
#polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bars launched!"

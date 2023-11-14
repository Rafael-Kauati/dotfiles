#!/bin/bash

#Kill all polybars
polybar-msg cmd quit

#Launch the polybar

#polybar -l info  -c  /home/tk/Ricing-i3/scripts/polybar/bottom.ini bottom &
#polybar top  2>&1 | tee -a /tmp/polybar.log & disown

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -l info  -c  /home/tk/Ricing-i3/scripts/polybar/custom.ini buttons &
    MONITOR=$m polybar -l info  -c  /home/tk/Ricing-i3/scripts/polybar/custom.ini system-status &
  done
else
  polybar -l info  -c  /home/tk/Ricing-i3/scripts/polybar/custom.ini buttons &
  polybar -l info  -c  /home/tk/Ricing-i3/scripts/polybar/custom.ini system-status &
fi
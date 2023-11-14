#!/bin/sh

instance=$(playerctl -l)



instance=$( playerctl -l | grep "elisa")

if [ $instance == "elisa" ]; then

    playerctl play-pause -p $instance


#If elisa is not initialised
else

    instance=$(playerctl -l)


    playerctl play-pause -p $instance

fi
#!/bin/sh


    instance=$( playerctl -l)


    status=$(playerctl status)

    if [ $status == "Playing" ]; then

    echo -e "  "

    else

    echo -e "  "

    fi




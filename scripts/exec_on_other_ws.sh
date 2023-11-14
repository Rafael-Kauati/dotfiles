#!/bin/sh

echo $(./getCurrentWs.sh | awk '{print substr($0,0,1)}') > 'ws.txt'

ws=$(cat ws.txt)

ws=$((ws+1))

echo $ws

xdotool key super+$ws 



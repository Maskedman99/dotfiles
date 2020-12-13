#!/bin/bash

i3status | while :
do
	read line

	if [ "$(playerctl status)" = "Playing" ]
	then
		echo -n "$(playerctl metadata title) - $(playerctl metadata artist) [$(playerctl -l | sed 's/\(.instance.*\)//')] | $line" || exit 1
	else
		echo -n $line || exit 1
	fi
done

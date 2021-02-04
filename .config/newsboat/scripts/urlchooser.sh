#!/bin/bash

EXT=$(echo $1 | awk -F'/' '{print $NF}' | awk -F. '{print $NF}')

if [[ "$EXT" == "jpg" || "$EXT" == "png" || "$EXT" == "jpeg" || "$EXT" == "JPG" || "$EXT" == "gif" ]]
then
	magick display -monitor $1
else
	firefox $1
fi

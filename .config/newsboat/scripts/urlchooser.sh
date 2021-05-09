#!/bin/bash

EXT=$(echo $1 | awk -F'/' '{print $NF}' | awk -F. '{print $NF}')

case $EXT in
	"jpg"* | "png"* | "jpeg"* | "JPG"* | "svg") feh -q $1 >/dev/null 2>&1 &;;
	"gif" | "mp4") mpv -quiet $1 >/dev/null 2>&1 &;;
	*) firefox $1 >/dev/null 2>&1 &;;
esac

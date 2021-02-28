#!/bin/bash

EXT=$(echo $1 | awk -F'/' '{print $NF}' | awk -F. '{print $NF}')

case $EXT in
	"jpg"* | "png"* | "jpeg"* | "JPG"* | "svg") magick display -monitor $1;;
	"gif") mpv -loop $1;;
	"mp4") mpv $1;;
	*) firefox $1;;
esac

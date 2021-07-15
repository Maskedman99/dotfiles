#!/bin/sh

# Use a menu command to accept the input
input=$(exec $HOME/.config/scripts/fzfmenu.sh)

# Exit if input is empty
[ -z "$input" ] && exit 0

# Default directory used to store the files temporarily
cachedir="/tmp/qr"
# If directory doesn't exist create one
[ ! -d "$cachedir" ] && mkdir -p "$cachedir"

# Encode the input to QR and store the image
qrencode "$input" -o "$cachedir/$input.png"
# Display the image
mpv --really-quiet "$cachedir/$input.png"

# Once finished, remove all of the cached files
rm "${cachedir:?}"/*

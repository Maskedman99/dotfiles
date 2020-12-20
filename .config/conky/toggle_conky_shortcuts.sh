#!/usr/bin/env bash

runningConkys=$(pgrep -a conky | awk '/_conky_shortcuts/{print $1}')

# if runningConkys is empty
if [[ -z "$runningConkys" ]]; then
    conky -q -c $HOME/.config/conky/i3_conky_shortcuts.lua &
    conky -q -c $HOME/.config/conky/nvim_conky_shortcuts.lua &
else
    echo "$runningConkys" | xargs -n 1 kill -15
fi

#!/usr/bin/env bash

runningConkys=$(pgrep -a conky | awk '/shortcuts/{print $1}')

# if runningConkys is empty
if [[ -z "$runningConkys" ]]; then
    conky -q -c $HOME/.config/conky/conky_i3_shortcuts.lua &
    conky -q -c $HOME/.config/conky/conky_nvim_shortcuts.lua &
else
    echo "$runningConkys" | xargs -n 1 kill -15
fi

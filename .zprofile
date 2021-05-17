#!/bin/zsh

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"

# WAYLAND
export MOZ_ENABLE_WAYLAND=1 firefox

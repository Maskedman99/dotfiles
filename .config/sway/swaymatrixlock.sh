CURRENTWORKSPACE=$(swaymsg -t get_tree | grep current_workspace | cut -d'"' -f 4)

swaymsg workspace 0
swaymsg bar mode invisible
swaymsg "exec alacritty -e zsh -c 'sleep 0.1 && cmatrix -b'" && swaylock && killall cmatrix
swaymsg bar mode toggle
swaymsg "workspace "$CURRENTWORKSPACE""

dunstify "Welcome Back" -a Sway -t 2000

# dotfiles

```
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' (add this alias to .bashrc)
bash
config config --local status.showUntrackedFiles no
```
https://www.atlassian.com/git/tutorials/dotfiles  
https://www.youtube.com/watch?v=tBoLDpTWVOM

## fonts

* [ttf-fira-code](https://archlinux.org/packages/community/any/ttf-fira-code/)
* [ttf-font-awesome](https://archlinux.org/packages/community/any/ttf-font-awesome/)

## packages

common    | extra     | i3       | sway     | 
--------- | --------- | -------- | -------- |
[dunst](https://wiki.archlinux.org/index.php/Dunst) | [mpv](https://wiki.archlinux.org/index.php/Mpv) | [i3-wm](https://archlinux.org/packages/community/x86_64/i3-wm/) | [sway](https://archlinux.org/packages/community/x86_64/sway/)
[dmenu](https://wiki.archlinux.org/index.php/Dmenu) | [cmus](https://wiki.archlinux.org/index.php/Cmus) | [i3lock-color](https://github.com/Raymo111/i3lock-color) [( AUR )](https://aur.archlinux.org/packages/i3lock-color/) | [swaylock](https://archlinux.org/packages/community/x86_64/swaylock/)
[rofi](https://wiki.archlinux.org/index.php/Rofi)  | [zathura](https://wiki.archlinux.org/index.php/Zathura) | [picom](https://wiki.archlinux.org/index.php/Picom)
[alacritty](https://wiki.archlinux.org/index.php/Alacritty) | [zathura-pdf-poppler](https://archlinux.org/packages/?name=zathura-pdf-poppler) | [maim](https://archlinux.org/packages/community/x86_64/maim/)
[yay-bin](https://github.com/Jguer/yay) [( AUR )](https://aur.archlinux.org/packages/yay-bin/) | [firefox](https://wiki.archlinux.org/index.php/Firefox) | [scrot](https://archlinux.org/packages/community/x86_64/scrot/)
[networkmanager_dmenu](https://github.com/firecat53/networkmanager-dmenu) [( AUR )](https://aur.archlinux.org/packages/networkmanager-dmenu-git/) | [newsboat](https://newsboat.org/) | [nitrogen](https://archlinux.org/packages/extra/x86_64/nitrogen/)
[doas](https://archlinux.org/packages/community/x86_64/opendoas/) | | [clipit](https://github.com/CristianHenzel/ClipIt/) [( AUR )](https://aur.archlinux.org/packages/clipit/)
[i3blocks](https://archlinux.org/packages/community/x86_64/i3blocks/) |
[ranger](https://wiki.archlinux.org/index.php/Ranger) |
[nvim](https://wiki.archlinux.org/index.php/Neovim) |

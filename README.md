# dotfiles

```
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' (add this alias to .bashrc)
bash
config config --local status.showUntrackedFiles no
```
https://www.atlassian.com/git/tutorials/dotfiles  
https://www.youtube.com/watch?v=tBoLDpTWVOM

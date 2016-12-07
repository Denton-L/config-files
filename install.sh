#!/bin/sh

readonly dotfiles='
Xmodmap
Xresources
Xresources.d
bash_profile
bashrc
gitconfig
globalgitignore
vim
'

for f in $dotfiles
do
	ln -sfT $PWD/$f ~/.$f 
done
ln -sfT $PWD/i3 ~/.config/i3

./update.sh

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
	ln -sT $f ~/.$f 
done
ln -sT i3 ~/.config/i3

./update.sh

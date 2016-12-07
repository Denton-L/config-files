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
	ln -sfT $f ~/.$f 
done
ln -sfT i3 ~/.config/i3

./update.sh

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

if [[ "$OSTYPE" == "darwin"* ]]
then
	lnflags='sf'
else
	lnflags='sfT'
fi

for f in $dotfiles
do
	ln -$lnflags $PWD/$f ~/.$f
done
ln -$lnflags $PWD/i3 ~/.config/i3

./update.sh

#!/bin/sh

readonly dotfiles='
Xmodmap
Xresources
Xresources.d
bash_profile
bashrc
ctags
gitconfig
git-template
globalgitignore
sshrc
sshrc.d
vim
'

for f in $dotfiles
do
	[ -d ~/.$f ] && rm -rf ~/.$f
	ln -sf $PWD/$f ~/.$f
done

[ -d ~/.config/i3 ] && rm -rf ~/.config/i3
ln -s $PWD/i3 ~/.config/i3

./update.sh

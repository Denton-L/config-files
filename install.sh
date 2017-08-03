#!/bin/sh

readonly dotfiles='
Xmodmap
Xresources
Xresources.d
bash_profile
bashrc
ctags
git-hooks
git-template
gitconfig
globalgitignore
inputrc
sshrc
sshrc.d
vim
'

readonly configfiles='
dunst
i3
'

for f in $dotfiles
do
	[ -d ~/.$f ] && mv ~/.$f ~/.$f.old
	ln -sf $PWD/$f ~/.$f
done

mkdir -p ~/.config
for f in $configfiles
do
	[ -d ~/.config/$f ] && mv ~/.config/$f ~/.config/$f.old
	ln -sf $PWD/$f ~/.config/$f
done

./update.sh

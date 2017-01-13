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
vim
'

if [[ "$OSTYPE" == "darwin"* ]]
then
	lncmd='ln -sf'
else
	lncmd='ln -sfT'
fi

for f in $dotfiles
do
	$lncmd $PWD/$f ~/.$f
done
$lncmd $PWD/i3 ~/.config/i3

./update.sh

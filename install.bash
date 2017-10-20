#!/usr/bin/env bash

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
profile
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
	[[ -d ~/."$f" ]] && rm -rf ~/."$f"
	ln -sf "$PWD/$f" ~/."$f"
done

mkdir -p ~/.config
for f in $configfiles
do
	[[ -d ~/.config/"$f" ]] && rm -rf ~/.config/"$f"
	ln -sf "$PWD/$f" ~/.config/"$f"
done

[[ -d ~/bin/ ]] && rm -rf ~/bin
ln -sf "$PWD/bin" ~/bin

./update.bash

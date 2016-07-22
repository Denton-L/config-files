set -o vi

for f in ~/.config-files/bashrc_sources/*
do
	[[ -a $f ]] && source $f
done

PS1='[\u@\h \W$(__git_ps1 " (%s)")$([[ $? -eq 0 ]] && echo "" || echo " ($?)")]\$ '

export VISUAL="vim"
export EDITOR="$VISUAL"
export PATH=~/bin:$PATH
export GIT_PS1_SHOWDIRTYSTATE=1

alias :q=exit
alias sl=ls
alias emacs=vim
alias trimspaces="sed -i 's/\s\+$//'"

eval $(thefuck --alias)

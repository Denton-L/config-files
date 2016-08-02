set -o vi
set -s autocd checkwinsize checkjobs extglob

for f in ~/.config-files/bashrc_sources/*
do
	[[ -a $f ]] && source $f
done

alias :q=exit
alias sl=ls
alias emacs=vim
alias trimspaces="sed -i 's/\s\+$//'"

[[ -n $THEFUCK_EVAL ]] && eval $THEFUCK_EVAL

PS1='[\u@\h \W$(__git_ps1)$([[ $? -eq 0 ]] && echo "" || echo " ($?)")]\$ '

return 0

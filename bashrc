#!/usr/bin/env bash

set -o vi
shopt -s autocd checkwinsize checkjobs extglob

for f in ~/.config-files/bashrc_sources/*
do
	[[ -a $f ]] && source $f
done

alias :q=exit
alias sl=ls
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias emacs=vim
alias trimspaces="sed -i 's/\s\+$//'"

PS1='[\u@\h \W$(__git_ps1 2>/dev/null)$([[ $? -eq 0 ]] && echo "" || echo " ($?)")]\$ '

return 0

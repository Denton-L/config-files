#!/usr/bin/env bash

export PATH=~/bin:~/.bin:$PATH
export GOPATH=~/go
export VISUAL=vim
export EDITOR=$VISUAL
export TERMINAL=uxterm
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto

[[ -f ~/.bashrc ]] && source ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > /dev/null || printf "\nWelcome, %s!\n\n" $(whoami)

return 0

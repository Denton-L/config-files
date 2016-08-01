export PATH=~/bin:$PATH
export VISUAL=vim
export EDITOR=$VISUAL
export TERMINAL=uxterm
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM=auto
which thefuck &> /dev/null && export THEFUCK_EVAL=$(thefuck --alias)

[[ -f ~/.bashrc ]] && source ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > /dev/null || printf "\nWelcome, %s!\n\n" $(whoami)

return 0

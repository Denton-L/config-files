[[ -f ~/.bashrc ]] && source ~/.bashrc

export PATH=~/bin:$PATH
export VISUAL=vim
export EDITOR=$VISUAL
export TERMINAL=uxterm
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM=auto
export THEFUCK_EVAL=$(thefuck --alias)

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > /dev/null || printf "\nWelcome, %s!\n\n" $(whoami)

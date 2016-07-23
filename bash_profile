[[ -f ~/.bashrc ]] && source ~/.bashrc

export VISUAL="vim"
export EDITOR="$VISUAL"
export PATH=~/bin:$PATH
export GIT_PS1_SHOWDIRTYSTATE=1
export THEFUCK_EVAL=$(thefuck --alias)

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > /dev/null || printf "\nWelcome, %s!\n\n" $(whoami)

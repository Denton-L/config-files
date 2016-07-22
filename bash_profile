[[ -f ~/.bashrc ]] && source ~/.bashrc

export VISUAL="vim"
export EDITOR="$VISUAL"
export PATH=~/bin:$PATH
export GIT_PS1_SHOWDIRTYSTATE=1

alias :q=exit
alias sl=ls
alias emacs=vim
alias trimspaces="sed -i 's/\s\+$//'"

eval $(thefuck --alias)

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > /dev/null || printf "\nWelcome, Denton!\n\n"

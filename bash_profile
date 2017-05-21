umask 0077

export PATH=~/bin:~/.bin:$PATH
export GOPATH=~/go
export VISUAL=vim
export EDITOR=$VISUAL
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto

[[ -f ~/.bashrc ]] && source ~/.bashrc
[[ -e ~/.startx ]] && source ~/.startx

printf "\nWelcome, %s!\n\n" $USER
return 0

[ -f ~/.bashrc ] && source ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > /dev/null || printf "\nWelcome, Denton!\n\n"

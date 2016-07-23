for f in ~/.profile ~/.bashrc
do
	[[ -a $f ]] && source $f
done

export THEFUCK_EVAL=$(thefuck --alias)

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx > /dev/null || printf "\nWelcome, %s!\n\n" $(whoami)

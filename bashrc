set -o vi

for f in ~/.config-files/bashrc_sources/*
do
	[[ -a $f ]] && source $f
done

PS1='[\u@\h \W$(__git_ps1 " (%s)")$([[ $? -eq 0 ]] && echo "" || echo " ($?)")]\$ '

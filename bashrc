set -o vi
shopt -s autocd checkwinsize checkjobs extglob

for f in ~/.config-files/bashrc_sources/*
do
	[[ -f $f ]] && source $f
done

[[ -f ~/.bin/completions.bash ]] && source ~/.bin/completions.bash

cdup() {
	cd $(pwd | sed "s/\(.*\/$1\/\).*/\1/")
}

_cdup() {
	COMPREPLY=()

	if [[ "$COMP_CWORD" == "1" ]]
	then
		COMPREPLY=( $(compgen -W "$(pwd | sed "s/\// /g")" -- $2) )
		return 0
	fi
}
complete -F _cdup cdup

alias :q=exit
alias sl=ls
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias emacs=vim
alias trimspaces="sed -i 's/\s\+$//'"
alias edtemp="$VISUAL $(mktemp)"

PS1='[\u@\h \W$(__git_ps1 2>/dev/null)$(e=$?; [[ $e -eq 0 ]] && echo "" || echo " ($e)")]\$ '

return 0

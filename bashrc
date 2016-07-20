set -o vi

for f in ~/.config-files/git/contrib/completion/git-prompt.sh ~/.config-files/git/contrib/completion/git-completion.bash
do
	[ -a $f ] && source $f
done

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export VISUAL="vim"
export EDITOR="$VISUAL"
export PATH=~/bin:$PATH

alias :q=exit
alias emacs=vim
alias trimspaces="sed -i 's/\s\+$//'"

eval $(thefuck --alias)

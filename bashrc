if [ -a /usr/share/git/completion/git-completion.bash ]
then
	source /usr/share/git/completion/git-completion.bash
fi

if [ -a /usr/share/git/completion/git-prompt.sh ]
then
	source /usr/share/git/completion/git-prompt.sh
	PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

export VISUAL="vim"
export EDITOR="$VISUAL"
export PATH=~/bin:$PATH
set -o vi
alias :q=exit
alias emacs=vim
alias trimspaces="sed -i 's/\s\+$//'"
eval $(thefuck --alias)

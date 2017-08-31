_git_squash() {
	if [[ "$COMP_CWORD" == "2" ]]
	then
		__git_complete_revlist
	fi

	return 0
} &&
complete -F _git_squash git-squash "git squash"

_git_delete() {
	if [[ "$COMP_CWORD" == "2" ]]
	then
		__gitcomp_nl "$(__git_remotes)"
	else
		__gitcomp_nl "$(__git_heads)"
	fi

	return 0
} &&
complete -F _git_delete git-delete "git delete"

_git_squash_rebase() {
	if [[ "$COMP_CWORD" == "2" ]]
	then
		__git_complete_revlist
	fi

	return 0
} &&
complete -F _git_squash_rebase git-squash-rebase "git squash-rebase"

_git_git() {
	__git_compute_all_commands
	__gitcomp "$__git_all_commands $(__git_aliases)"
} &&
complete -F _git_git git-git "git git"

complete -F _ssh chromium-socks

complete -F _command run

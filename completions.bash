_git_squash() {
	if [[ "$COMP_CWORD" == "2" ]]
	then
		__git_complete_revlist
	fi

	return 0
} &&
complete -F _git_squash "git squash"

_git_delete() {
	if [[ "$COMP_CWORD" == "2" ]]
	then
		__gitcomp_nl "$(__git_remotes)"
	else
		__gitcomp_nl "$(__git_heads)"
	fi

	return 0
} &&
complete -F _git_delete "git delete"

_git_push_up() {
	if [[ "$COMP_CWORD" == "2" ]]
	then
		__gitcomp_nl "$(__git_remotes)"
	else
		_git_push
	fi

	return 0
} &&
complete -F _git_push_up "git push-up"

_git_git() {
	__git_compute_all_commands
	__gitcomp "$__git_all_commands $(__git_aliases)"
} &&
complete -F _git_git "git git"

complete -F _command run

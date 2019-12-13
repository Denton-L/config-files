#!/bin/bash

if [[ -z "$SSHHOME" ]]
then
	source_dir=~/.config-files
else
	source_dir="$SSHHOME"
fi
source_dir="$source_dir"/bashrc_sources

mkdir -p "$source_dir"

git_version=v$(git --version | sed 's/git version \([0-9]*\.[0-9]*\.[0-9]*\).*/\1/')

curl https://raw.githubusercontent.com/git/git/$git_version/contrib/completion/git-prompt.sh -o "$source_dir/git-prompt.sh"
curl https://raw.githubusercontent.com/git/git/$git_version/contrib/completion/git-completion.bash -o "$source_dir/git-completion.bash"
curl https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/tmux.completion.bash -o "$source_dir/tmux.completion.bash"

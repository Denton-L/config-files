#!/usr/bin/env bash

if [[ -z "$SSHHOME" ]]
then
	SOURCE_FOLDER=~/.config-files
else
	SOURCE_FOLDER="$SSHHOME"
fi
SOURCE_FOLDER="$SOURCE_FOLDER"/bashrc_sources

mkdir -p "$SOURCE_FOLDER"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o "$SOURCE_FOLDER/git-prompt.sh"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o "$SOURCE_FOLDER/git-completion.bash"
curl https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/tmux.completion.bash -o "$SOURCE_FOLDER/tmux.completion.bash"

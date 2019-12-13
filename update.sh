#!/bin/bash

if [[ -z "$SSHHOME" ]]
then
	SOURCE_DIR=~/.config-files
else
	SOURCE_DIR="$SSHHOME"
fi
SOURCE_DIR="$SOURCE_DIR"/bashrc_sources

mkdir -p "$SOURCE_DIR"

GIT_VERSION=v$(git --version | sed 's/git version \([0-9]*\.[0-9]*\.[0-9]*\).*/\1/')

curl https://raw.githubusercontent.com/git/git/$GIT_VERSION/contrib/completion/git-prompt.sh -o "$SOURCE_DIR/git-prompt.sh"
curl https://raw.githubusercontent.com/git/git/$GIT_VERSION/contrib/completion/git-completion.bash -o "$SOURCE_DIR/git-completion.bash"
curl https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/tmux.completion.bash -o "$SOURCE_DIR/tmux.completion.bash"

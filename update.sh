#!/bin/sh

SOURCE_FOLDER=${SSHHOME:-~/.config-files}/bashrc_sources
mkdir -p $SOURCE_FOLDER
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o $SOURCE_FOLDER/git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $SOURCE_FOLDER/git-completion.bash
curl https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/tmux.completion.bash -o $SOURCE_FOLDER/tmux.completion.bash

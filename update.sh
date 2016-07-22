#!/bin/sh

mkdir -p bashrc_sources
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o bashrc_sources/git-prompt.sh 
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o bashrc_sources/git-completion.bash

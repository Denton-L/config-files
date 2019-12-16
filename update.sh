#!/bin/bash

if [[ -z "$SSHHOME" ]]
then
	repo_dir=~/.config-files
else
	repo_dir="$SSHHOME"
fi
source_dir="$repo_dir"/bashrc_sources

mkdir -p "$source_dir"

git_version=v$(git --version | sed 's/git version \([0-9]*\.[0-9]*\.[0-9]*\).*/\1/')

curl https://raw.githubusercontent.com/git/git/$git_version/contrib/completion/git-prompt.sh -o "$source_dir/git-prompt.sh"
curl https://raw.githubusercontent.com/git/git/$git_version/contrib/completion/git-completion.bash -o "$source_dir/git-completion.bash"
curl https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/tmux.completion.bash -o "$source_dir/tmux.completion.bash"
curl https://raw.githubusercontent.com/gitster/git/master/contrib/credential/netrc/git-credential-netrc -o "$repo_dir/bin/git-credential-netrc"
chmod +x "$repo_dir/bin/git-credential-netrc"

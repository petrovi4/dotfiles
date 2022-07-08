#!/bin/zsh

if ! type "brew" >/dev/null; then
	echo "> Installing Homebrew ..."

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

export PATH=$PATH:/opt/homebrew/bin

echo "› brew update"
brew update

echo "> brew bundle"
brew bundle --file="$SYSTEM_ROOT/homebrew/Brewfile"

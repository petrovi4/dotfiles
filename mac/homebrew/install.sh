#!/bin/zsh

if ! type "brew" >/dev/null; then
	echo "> Installing Homebrew ..."

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "› brew update"
brew update

echo "> brew bundle"
brew bundle --file="$ZSH/homebrew/Brewfile"

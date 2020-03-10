#!/bin/zsh

if ! type "brew" > /dev/null; then
	echo "> Installing Homebrew ..."

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "› brew update"
brew update


echo "> brew bundle"
brew bundle --file="$ZSH/homebrew/Brewfile"



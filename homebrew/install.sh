#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

if test "$(uname)" = "Darwin"; then

	# Check for Homebrew
	if test ! $(which brew)
	then
		echo "> Installing Homebrew ..."

		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

else
	echo "› Skiping installation Homebrew because it's not MacOs"
fi

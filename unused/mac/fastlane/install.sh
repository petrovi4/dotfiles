#!/bin/zsh

if test ! $(which fastlane); then
	echo "> Installing Fastlane ..."

	sudo gem install fastlane -NV
fi

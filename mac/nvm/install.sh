#!/bin/zsh

# npm update spoof -g

[ -s "$BREW_NVM_DIR/nvm.sh" ] && . "$BREW_NVM_DIR/nvm.sh"

NODE_VER="v10.16.3"
if [ "$(nvm current)" != "$NODE_VER" ]; then
	nvm install v10.16.3
fi

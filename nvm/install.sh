mkdir -p $NVM_DIR

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

node_version="lts/dubnium"
nvm install $node_version

nvm alias default $node_version

if test ! $(which spoof); then
	npm install spoof -g
fi

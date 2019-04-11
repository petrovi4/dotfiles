curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

node_version="lts/dubnium"
nvm install $node_version

nvm alias default $node_version

if test ! $(which spoof)
then
  if test $(which npm)
  then
    sudo npm install spoof -g
  fi
fi

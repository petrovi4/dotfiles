source $ZSH/mac/nvm/autoload.zsh


node_version="lts/dubnium"
nvm install $node_version

nvm alias default $node_version

# if test ! $(which spoof); then
# 	npm install spoof -g
# fi

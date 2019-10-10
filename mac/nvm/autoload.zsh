export NVM_DIR=$HOME/.nvm
if [ -f $(brew --prefix nvm)/nvm.sh ]; then
	# echo 'HERE1'
	source $(brew --prefix nvm)/nvm.sh
	# echo 'HERE2'
fi

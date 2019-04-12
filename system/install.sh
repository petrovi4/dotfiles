if test "$(uname)" = "Linux"; then

	apt-get update

	apt-get --assume-yes install build-essential htop

	apt-get --assume-yes install 

	if ! [ -f ~/.ssh/id_rsa ]; then
		ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ""
	fi
	
fi
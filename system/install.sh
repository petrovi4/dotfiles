if test "$(uname)" = "Linux"; then

	apt-get update

	apt-get --assume-yes install build-essential

	apt-get --assume-yes install htop

fi
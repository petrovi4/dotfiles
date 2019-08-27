if test "$(uname)" = "Darwin"; then 
	echo "› Installing Docker ..."
	
	brew install nginx

elif test "$(uname)" = "Linux"; then 
	echo "› Installing Docker ..."

	apt-get --assume-yes install nginx
	
fi

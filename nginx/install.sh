if test "$(uname)" = "Darwin"; then 
	
	brew install nginx

elif test "$(uname)" = "Linux"; then 

	apt-get --assume-yes install nginx
	
fi

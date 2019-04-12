if test "$(uname)" = "Linux"; then
	cd /
	git clone https://github.com/petrovi4/daemontools.git daemontools_076

	rm -rf daemontools
	mv daemontools76 daemontools

	if grep -Fxq "svscanboot" /etc/rc.local
	then
		echo 'svscanboot already autoloaded'
	else
		echo "csh -cf '/command/svscanboot &'" >> /etc/rc.local
	fi

fi

if test "$(uname)" = "Linux"; then
	rm -rf /daemontools
	rm -rf /daemontools_076
	git clone https://github.com/petrovi4/daemontools.git /daemontools_076

	/daemontools_076/package/install

	rm -rf /daemontools
	mv /daemontools_076 /daemontools

	if grep -Fxq "svscanboot" /etc/rc.local
	then
		echo 'svscanboot already autoloaded'
	else
		echo "csh -cf '/command/svscanboot &'" >> /etc/rc.local
	fi

fi

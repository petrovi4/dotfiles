if test "$(uname)" = "Linux"; then
	cd /
	git clone https://github.com/petrovi4/daemontools.git daemontools_076
	cd /daemontools_076
	./package/install
	cd /

	rm -rf daemontools
	mv daemontools_076 daemontools

	if grep -Fxq "svscanboot" /etc/rc.local
	then
		echo 'svscanboot already autoloaded'
	else
		echo "csh -cf '/command/svscanboot &'" >> /etc/rc.local
	fi

fi

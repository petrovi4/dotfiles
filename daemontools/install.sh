if test "$(uname)" = "Linux"; then
	echo "› Installing DaemonTools ..."

	rm -rf /daemontools
	rm -rf /daemontools_076
	git clone https://github.com/petrovi4/daemontools.git /daemontools_076

	cd /daemontools_076
	./package/install
	cd "$(dirname $0)"/..

	rm -rf /daemontools
	mv /daemontools_076 /daemontools

	if grep -Fq "svscanboot" /etc/rc.local
	then
		echo 'svscanboot already autoloaded'
	else
		echo "csh -cf '/command/svscanboot &'" >> /etc/rc.local
		chmod +x /etc/rc.local
		systemctl enable rc-local
	fi

else

	echo "› Skiping installation DaemonTools because it's not Linux"
	
fi

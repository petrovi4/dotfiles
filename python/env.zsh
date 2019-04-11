if test "$(uname)" = "Darwin"; then

	# Setting PATH for Python 3.7
	# The original version is saved in .bash_profile.pysave
	PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
	export PATH

	# Setting PATH for Python 3.6
	# The original version is saved in .bash_profile.pysave
	PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
	export PATH

fi

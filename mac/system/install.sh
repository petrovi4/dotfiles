# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› Updating MacOs ..."
sudo softwareupdate -i -a

# shortcut to this dotfiles path is $SYSTEM_ROOT
SYSTEM_ROOT=$HOME/.dotfiles/mac

$SYSTEM_ROOT/homebrew/install.sh

echo "› Setting up all install files"
find $SYSTEM_ROOT -name install.sh -not -path "*/homebrew/*" -not -path "*/system/*" | while read file; do
	chmod +x $file
	. $file
done

echo "› Set up launch agents"
mkdir -p ~/Library/LaunchAgents
for agent in $(ls $SYSTEM_ROOT/launchAgents); do
	source_file="$SYSTEM_ROOT/launchAgents/$(basename $agent)"
	target_file="$HOME/Library/LaunchAgents/$(basename $agent)"

	if [[ -f "$target_file" ]]; then
		echo "#=> Unload $target_file"
		launchctl unload "$target_file"
	fi

	echo "#=> Copy $agent to ~/Library/LaunchAgents"
	cp "$source_file" "$target_file"

	echo "#=> Load $target_file"
	launchctl load "$target_file"
done

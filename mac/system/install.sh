# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› Updating MacOs ..."
sudo softwareupdate -i -a

# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/.dotfiles/mac

$ZSH/homebrew/install.sh

find $ZSH -name install.sh -not -path "*/homebrew/*" -not -path "*/system/*" | while read file; do
	chmod +x $file
	. $file
done

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› Updating MacOs ... (TODO: REMOVE COMMENT)"
# sudo softwareupdate -i -a

$ZSH/mac/homebrew/install.sh

find $ZSH/mac -name install.sh -not -path "*/homebrew/*" -not -path "*/system/*" | while read file; do
	echo $file
	chmod +x $file
  $file
done

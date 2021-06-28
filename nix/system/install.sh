apt-get update

apt-get --assume-yes install zsh csh build-essential htop

if ! [ -f ~/.ssh/id_rsa ]; then
	ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ""
fi

SYSTEM_ROOT=$HOME/.dotfiles/nix

find $SYSTEM_ROOT -name install.sh -not -path "*/system/*" | while read file; do
	chmod +x $file
	$file
done

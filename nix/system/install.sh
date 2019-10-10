
apt-get update

apt-get --assume-yes install csh build-essential htop

if ! [ -f ~/.ssh/id_rsa ]; then
	ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ""
fi
	

find $ZSH/mac -name install.sh -not -path "*/system/*" | while read file; do
	chmod +x $file
  $file
done

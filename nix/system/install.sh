
apt-get update

apt-get --assume-yes install csh build-essential htop

if ! [ -f ~/.ssh/id_rsa ]; then
	ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ""
fi
	

find .. -name install.sh -not -path "../system/*" | while read installer
do
  echo  -e "\e[1;7mRun '$installer'\e[0m"
  /bin/bash "${installer}"
done

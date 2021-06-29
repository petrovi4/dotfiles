echo "deb http://deb.debian.org/debian/ unstable main" > /etc/apt/sources.list.d/unstable-wireguard.list
printf 'Package: *\nPin: release a=unstable\nPin-Priority: 150\n' > /etc/apt/preferences.d/limit-unstable
apt-get update

apt-get --assume-yes install linux-headers-$(uname -r|sed 's/[^-]*-[^-]*-//')

apt-get install wireguard -y

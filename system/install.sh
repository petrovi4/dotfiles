if test ! "$(uname)" = "Linux"
  then
  exit 0
fi


apt-get update

apt-get install htop
#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSH/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


export ADF_PATH=~/projects/github/esp-adf

export PATH=$PATH:$ANDROID_HOME/platform-tools
export NODE_BINARY=$HOME/.nvm/versions/node/v12.18.0/bin/

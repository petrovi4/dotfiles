#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($SYSTEM_ROOT/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:$ANDROID_HOME/platform-tools

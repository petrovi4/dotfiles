export NVM_DIR="$HOME/.nvm"
NVM_BREW_DIR="$(brew --prefix)/opt/nvm"
[ -s "$NVM_BREW_DIR/nvm.sh" ] && . "$NVM_BREW_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_BREW_DIR/etc/bash_completion.d" ] && . "$NVM_BREW_DIR/etc/bash_completion.d" # This loads nvm bash_completion

# Необычные алиасы из-за тормозов при старте сессии в терминале
# Подробности тут https://github.com/nvm-sh/nvm/issues/539#issuecomment-245791291
# alias node='unalias node ; unalias npm ; nvm use default ; node $@'
# alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'

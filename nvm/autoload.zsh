# Необычный лоад nvm из-за тормозов при обычной загрузке
# Подробности тут https://github.com/nvm-sh/nvm/issues/539#issuecomment-245791291

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm

alias node='unalias node ; unalias npm ; nvm use default ; node $@'
alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'

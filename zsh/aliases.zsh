alias reload!='. ~/.zshrc'

alias ls='ls -GFh'
alias ll='ls -GHh -la'
alias ..='cd ..'
alias ...='cd ../..'

alias p='ping 8.8.8.8'

alias e='exit'


# all of our aliases files
typeset -U config_files
config_files=($HOME/.dotfiles/**/aliases.sh)
for file in $config_files; do
  source $file
done
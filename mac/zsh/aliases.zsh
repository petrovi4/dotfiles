alias reload!='. ~/.zshrc'

#alias ls='ls -GFh'
#alias ll='ls -GHh -la'

alias ls='eza -h'
alias ll='eza -Hhla'
alias lt='eza -HhlaT -I node_modules\|.git --git-ignore'
alias ..='cd ..'
alias ...='cd ../..'

alias p='ping 8.8.8.8'

alias e='exit'

alias cdf='cd ~/projects/foxty/'
alias cdt='cd ~/projects/trevelo/'

alias cu='carthage update --platform ios'
alias cb='carthage build --platform ios'

alias cnt_req='find . -print | wc -l'
alias cnt='ls -1 . | wc -l'

source ~/.dotfiles_detached/aliases

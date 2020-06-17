alias reload!='. ~/.zshrc'

#alias ls='ls -GFh'
#alias ll='ls -GHh -la'

alias ls='exa -GFh'
alias ll='exa -GHhla'
alias lt='exa -GHhlaT -I node_modules\|.git --git-ignore'
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

alias pi='ssh pi'
alias np='ssh nanoPi'
alias h='ssh h'
alias z='ssh z'
alias f='ssh f'

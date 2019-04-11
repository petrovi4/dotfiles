#!/bin/bash

alias gl='git log'
alias gll="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gs='git status'
alias gA='git add -A'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gb='git branch'
alias gbl='git branch -l'
alias gch='git checkout'
alias gchm='git checkout master'
alias gchd='git checkout dev'

alias gm='git merge -m "Auto-Merge"'
alias gmdt='git merge dev --strategy-option theirs'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gf=gitFix
alias gff='gA && gc "Fast Fix" && gp'

gitFix() {
  git add -A
  git commit -m "$1"
  git push
}

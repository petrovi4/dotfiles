alias gl='git log'
alias gll="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gs='git status'
alias пы='gs'

alias gA='git add -A'
alias ga='git add'

alias gc='git commit -m'
alias gca='git commit --amend --no-edit'
alias gcf='git commit -n -m'

alias gp='git push'
alias gpl='git pull'

alias gchp='git cherry-pick'
alias gchpc='git cherry-pick --continue'
alias gchpa='git cherry-pick --abort'

alias gb='git branch'

alias gbl='git branch -l'
alias пид='gbl'

alias gr='git rebase'
alias grd='git rebase develop'
alias grc='git rebase --continue'

alias gch='git checkout'

#alias gchm='git checkout master'

alias gchd='git checkout develop'

alias gm='git merge -m "Auto-Merge"'
alias gmdt='git merge dev --strategy-option theirs'

# Remove `+` and `-` from start of diff lines; just rely upon color.
#alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gd='git diff'

alias gf=gitFix
alias gff='gA && gc "Fast Fix" && gp'

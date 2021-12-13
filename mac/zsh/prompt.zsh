#!/bin/zsh

# Generator here
# https://zsh-prompt-generator.site/

if (($+commands[git])); then
	git="$commands[git]"
else
	git="/usr/bin/git"
fi

git_branch() {
	#echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
	echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ '{if (NF >= 4) print $(NF-1)"/"$NF; else print $(NF)}')
}

PROMPT="%F{88}%n%f@%F{14}%m%f %F{221}%~%f%F{221}/%f "

RPROMPT=$'%F{88}$(git_branch)%f'

# Генератор здесь
# https://zsh-prompt-generator.site/

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}



PROMPT="%F{88}%n%f@%F{14}%m%f %F{221}%~%f%F{221}/%f "

RPROMPT=$'%F{88}$(git_branch)%f'
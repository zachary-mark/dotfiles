source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

alias ls="ls -G"

PS1="\e[1;32m\u@\h:\e[0;34m\w\e[0;35m\$(__git_ps1 \" (%s)\")$ \e[m"
export PS1


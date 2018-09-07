source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

alias ls="ls -G"

# get current branch in git repo
function parse_git_branch() {
	echo "$(__git_ps1)"
}


export PS1="\[\e[1;32m\]\u\[\e[m\]\[\e[1;32m\]@\[\e[m\]\[\e[1;32m\]\h\[\e[m\]\[\e[1;32m\]:\[\e[m\]\[\e[34m\]\w\[\e[m\]\[\e[35m\]\`parse_git_branch\`\[\e[m\]\[\e[m\]\[\e[35m\]\\$\[\e[m\] "

# This is the workingish one i've been using as of 9/7/2018
#PS1="\e\[\033[1;32m\]\u@\h:\e\[\033[0;34m\]\w\e\[\033[0;35m\]\$(__git_ps1 \" (%s)\")$ \e\[[m\]"

#from ezprompt.net without __git_ps1
#PS1="\[\e[1;32m\]\u\[\e[m\]\[\e[1;32m\]@\[\e[m\]\[\e[1;32m\]\h\[\e[m\]\[\e[1;32m\]:\[\e[m\]\[\e[34m\]\W\[\e[m\]\[\e[35m\]\\$\[\e[m\] "
#PS1="\[\e[1;32m\]\u\[\e[m\]\[\e[1;32m\]@\[\e[m\]\[\e[1;32m\]\h\[\e[m\]\[\e[1;32m\]:\[\e[m\]\[\e[34m\]\W\[\e[m\]\[\e[35m\]\\$\[\e[m\] "

export PS1


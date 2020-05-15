
function priority_source() {
  for source_path in "$@"
  do
    if [ -f $source_path ] ; then
      source $source_path
      return 0
    fi
  done
  return 1
}

priority_source \
  ~/bin/git-bash/git-completion.bash \
  /usr/local/etc/bash_completion.d/git-completion.bash

priority_source \
  ~/bin/git-bash/git-prompt.sh \
  /usr/local/etc/bash_completion.d/git-prompt.sh

alias ls="ls -G --color=auto"
alias mergehistory="git log --merges --pretty=format:\"%h ; %ae ; %aD ; %s\""

export PATH=~/bin:$PATH
eval "$(rbenv init -)"

# get current branch in git repo
function parse_git_branch() {
	echo "$(__git_ps1)"
}

export PS1="\[\e[1;32m\]\u\[\e[m\]\[\e[1;32m\]@\[\e[m\]\[\e[1;32m\]\h\[\e[m\]\[\e[1;32m\]:\[\e[m\]\[\e[34m\]\w\[\e[m\]\[\e[35m\]\`parse_git_branch\`\[\e[m\]\[\e[m\]\[\e[35m\]\\$\[\e[m\] "
export EDITOR=vi

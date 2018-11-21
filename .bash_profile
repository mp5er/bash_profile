#alias
alias ll='ls -laF'

# display git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# promt config and colors
export PS1="\[\033[37m\]\u@\h \[\033[35m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ \[\033[33m\]"
export CLICOLOR=1

# ls color
export LSCOLORS=ExFxBxDxCxegedabagacad

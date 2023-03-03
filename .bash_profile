# terminal prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1="@\[\033[33;1m\]\w\[\033[m\]:\[\033[36m\]\$(parse_git_branch)\[\033[m\]$ "

#Exports
PATH="$PATH:/opt/homebrew/bin"
PATH="$PATH:/Users/chenwenzhe88/Documents/sdk/flutter/bin"


#Tools
. /opt/homebrew/opt/asdf/libexec/asdf.sh
. /opt/homebrew/opt/asdf/etc/bash_completion.d/asdf.bash

#Git Shortcut
alias gs='git status'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push origin'

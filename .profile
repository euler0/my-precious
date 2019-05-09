# The personal initialization file, executed for login shells

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH=$HOME/.local/bin:$PATH

case $OSTYPE in
freebsd*)
  alias emacs='emacs -nw'
  export EDITOR=emacs
  ;;
darwin*)
  alias emacs='/usr/local/opt/emacs/bin/emacs -nw'
  export EDITOR='subl -w'
  export PATH=$PATH:$HOME/Qt/5.12.3/clang_64/bin:$HOME/Library/Android/sdk/platform-tools
  ;;
esac

eval "$(rbenv init -)"

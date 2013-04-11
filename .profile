export PATH=$HOME/bin:$PATH

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

case $OSTYPE in
darwin*)
  alias emacs='/usr/local/Cellar/emacs/24.3/bin/emacs -nw'
  ;;
*)
  alias emacs='emacs -nw'
  ;;
esac

# Executed by bash(1) for non-login shells.

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

case $OSTYPE in
freebsd*)
  export EDITOR=emacs
  ;;

darwin*)
  export EDITOR='subl -w'
  ;;
esac

CURDIR="$(dirname ${BASH_SOURCE[0]})"

# Add bash aliases.
if [ -f $CURDIR/.bash_aliases ]; then
  source $CURDIR//.bash_aliases
fi

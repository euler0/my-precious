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

# Add bash aliases.
if [ -f .bash_aliases ]; then
  source .bash_aliases
fi

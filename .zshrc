export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export PS1="%n %1~ $ "

# Avoid succesive duplicates in the zsh command history.
setopt hist_ignore_all_dups

case $OSTYPE in
darwin*)
  export PATH=$PATH:$(find $HOME/Qt -name "5*" -maxdepth 1 -type d)/clang_64/bin:$HOME/Library/Android/sdk/platform-tools
  ;;
esac

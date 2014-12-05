# The personal initialization file, executed for login shells

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH=$HOME/local/bin:$PATH

case $OSTYPE in
freebsd*)
  alias emacs='emacs -nw'
  export EDITOR=emacs
  ;;
darwin*)
  alias emacs='/usr/local/Cellar/emacs/24.4/bin/emacs -nw'
  export EDITOR='atom -w'
  export PATH=$HOME/Qt5.3.2/5.3/clang_64/bin:$PATH
  export JAVA_HOME=`/usr/libexec/java_home`
  export DYLD_LIBRARY_PATH=$HOME/local/lib:$DYLD_LIBRARY_PATH
  #export PKG_CONFIG=/etc/X11/lib/pkgconfig/
  #export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk/
  #export NDK_ROOT=/usr/local/Cellar/android-ndk/r8e/
  ;;
esac

eval "$(rbenv init -)"

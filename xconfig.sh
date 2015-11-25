

if [ $1 ]
then

  if [ $1 = "zsh" ]
  then
    ./configure \
#      --enable-etcdir=/etc/zsh \
#      --enable-zshenv=/etc/zsh/zshenv \
#      --enable-zlogin=/etc/zsh/zlogin \
#      --enable-zlogout=/etc/zsh/zlogout \
#      --enable-zprofile=/etc/zsh/zprofile \
#      --enable-zshrc=/etc/zsh/zshrc \
      --enable-maildir-support \
      --with-term-lib='ncursesw' \
      --enable-multibyte \
      --enable-function-subdirs \
      --enable-fndir=/usr/local/share/zsh/functions \
      --enable-scriptdir=/usr/local/share/zsh/scripts \
      --with-tcsetpgrp \
      --enable-pcre \
      --enable-cap \
      --enable-zsh-secure-free
  fi

  if [ $1 = "vim" ]
  then
    ./configure \
      --with-features=huge \
      --enable-gpm \
      --enable-acl \
      --with-x=no \
      --disable-gui \
      --enable-multibyte \
      --enable-cscope \
      --disable-netbeans \
      --disable-perlinterp \
      --enable-pythoninterp \
      --disable-python3interp \
      --disable-rubyinterp \
      --disable-luainterp
  fi


  if [ $1 = "git" ]
  then
    ./configure \
      --without-tcltk
  fi

fi


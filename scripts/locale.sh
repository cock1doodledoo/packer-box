#!/usr/bin/env bash

# vagrant-user
mkdir $HOME/.bashrc.d
cat << '__EOF__' > $HOME/.bashrc.d/locale.sh
if [ $TERM != linux ]; then
  export LANG=ja_JP.UTF-8
  export LANGUAGE=ja_JP:ja
fi
__EOF__
chown -R $SUDO_USER:$(groups $SUDO_USER | cut -d " " -f 3) $HOME/.bashrc.d

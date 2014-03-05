#!/bin/bash

# vagrant-user
mkdir ~/.bashrc.d
cat << '__EOF__' > ~/.bashrc.d/locale.sh
if [ ${TERM} != linux ]; then
  export LANG=ja_JP.UTF-8
  export LANGUAGE=ja_JP:ja
fi
__EOF__
chown -R vagrant:vagrant ~/.bashrc.d
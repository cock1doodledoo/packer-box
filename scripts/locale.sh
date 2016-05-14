#!/usr/bin/env bash

cat << '__EOF__' > ${HOME}/.bashrc.d/locale.sh
if [ $TERM != linux ]; then
  export LANG=ja_JP.UTF-8
  export LANGUAGE=ja_JP:ja
fi
__EOF__

#!/bin/bash

# vagrant-user
mkdir ~/.bashrc.d
cat << '__EOF__' > ~/.bashrc.d/locale.sh
export LANG=ja_JP.UTF-8
export LANGUAGE=ja_JP:ja
__EOF__
chown -R vagrant:vagrant ~/.bashrc.d
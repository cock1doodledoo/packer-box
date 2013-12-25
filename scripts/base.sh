#!/bin/bash

# Apt-install various things necessary for Ruby, guest additions, etc.
apt-get -y install gcc build-essential

# Enable japanese
cat << '__EOF__' > /tmp/set_lang.sh
case $TERM in
  linux) LANG=C ;;
  *) LANG=ja_JP.UTF-8 ;;
esac
__EOF__
mv /tmp/set_lang.sh /etc/profile.d/
#!/bin/bash

# apt-install various things necessary for Ruby, guest additions, etc.
apt-get -y install gcc build-essential

# update /etc/skel
cat << '__EOF__' >> /etc/skel/.bashrc

if [ -d $HOME/.bashrc.d ]; then
  for i in $HOME/.bashrc.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
__EOF__
cp /etc/skel/.bashrc ~/.bashrc
chown vagrant:vagrant ~/.bashrc

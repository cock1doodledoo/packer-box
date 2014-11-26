#!/usr/bin/env bash

# be structured bashrc
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
cp /etc/skel/.bashrc $HOME/.bashrc
chown $SUDO_USER:$(groups $SUDO_USER | cut -d " " -f 3) $HOME/.bashrc

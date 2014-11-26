#!/usr/bin/env bash

# skip password in sudo
echo %$SUDO_USER ALL=NOPASSWD:ALL > /etc/sudoers.d/$SUDO_USER
chmod 0440 /etc/sudoers.d/$SUDO_USER

# installing vagrant keys
if [ ! -d  $HOME/.ssh ]; then
  mkdir $HOME/.ssh
  chmod 700 $HOME/.ssh
fi
cd $HOME/.ssh
wget 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' -O authorized_keys
chmod 600 authorized_keys
chown -R $SUDO_USER:$(groups $SUDO_USER | cut -d " " -f 3) $HOME/.ssh

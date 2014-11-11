#!/bin/bash

# skip password in sudo
echo %vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

# installing vagrant keys
if [ ! -d  $HOME/.ssh ]; then
  mkdir $HOME/.ssh
  chmod 700 $HOME/.ssh
fi
cd $HOME/.ssh
wget 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' -O authorized_keys
chmod 600 authorized_keys
chown -R vagrant:vagrant $HOME/.ssh

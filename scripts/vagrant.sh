#!/bin/bash

# Set up sudo
echo %vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

# Installing vagrant keys
if [ ! -d  /home/vagrant/.ssh ]; then
  mkdir /home/vagrant/.ssh
  chmod 700 /home/vagrant/.ssh
fi
cd /home/vagrant/.ssh
wget 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' -O authorized_keys
chmod 600 authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

#!/usr/bin/env bash

# installing vagrant keys
if [ ! -d  ${HOME}/.ssh ]; then
  mkdir ${HOME}/.ssh
  chmod 700 ${HOME}/.ssh
fi
cd ${HOME}/.ssh
curl 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' >> authorized_keys
chmod 600 authorized_keys

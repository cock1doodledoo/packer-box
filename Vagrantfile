# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = 2
HOSTNAME = 'check-with-vagrant'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = HOSTNAME
  config.vm.box = 'base'
  config.vm.box_url = 'base.box'
  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.name = HOSTNAME
  end
end

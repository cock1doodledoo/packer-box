#!/bin/bash

# install nessesary packages to compile guest additions
apt-get -y install gcc make

# install the VirtualBox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
mount -o loop $VBOX_ISO /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# cleanup VirtualBox
rm $VBOX_ISO

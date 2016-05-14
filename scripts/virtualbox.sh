#!/usr/bin/env bash

# install nessesary packages to compile guest additions
sudo yum -y install gcc make kernel-devel bzip2

# install the VirtualBox guest additions
VBOX_VERSION=$(cat ${HOME}/.vbox_version)
VBOX_ISO=VBoxGuestAdditions_${VBOX_VERSION}.iso
sudo mount -o loop ${VBOX_ISO} /mnt
sudo /mnt/VBoxLinuxAdditions.run
sudo umount /mnt

# cleanup VirtualBox
rm $VBOX_ISO

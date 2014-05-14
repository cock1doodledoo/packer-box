#!/bin/bash

# Clean up download files
apt-get -y autoremove
apt-get clean

#Clean up tmp
rm -rf /tmp/*

# Removing leftover leases and persistent rules
rm /var/lib/dhcp/*

# Make sure Udev doesn't block our network
# http://6.ptmc.org/?p=164
if [ -f /etc/udev/rules.d/70-persistent-net.rules ]; then
  rm /etc/udev/rules.d/70-persistent-net.rules
fi
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

# Adding a 2 sec delay to the interface up, to make the dhclient happy!
echo "pre-up sleep 2" >> /etc/network/interfaces

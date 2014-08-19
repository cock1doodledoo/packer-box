set VM_NAME=base

vagrant box remove %VM_NAME%
vagrant box add %VM_NAME% ../%VM_NAME%.box
vagrant up
packer-box
==========
tool-set for building MY base-box

### specs of builded box
* [centos](https://www.centos.org/ "centos") 7 (1708)
* Japanese keyboad

### depend on
* [packer](https://www.packer.io/ "packer") 1.1.3
* [virtualbox](https://www.virtualbox.org/ "virtualbox") 5.2.0
* [vagrant](https://www.vagrantup.com/ "vagrant") 2.0.1
* [ruby](https://www.ruby-lang.org/ "ruby") 2.5.0

### set up environment
for windows pc
``` cmd
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
cinst packages.config
```

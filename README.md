packer-box
==========
tool-set for building my base-box

### specs of builded box
* [centos](https://www.centos.org/ "centos") 7.3
* Japanese keyboad

### depend on
* [packer](https://www.packer.io/ "packer") 1.0.3
* [virtualbox](https://www.virtualbox.org/ "virtualbox") 5.1.26
* [vagrant](https://www.vagrantup.com/ "vagrant") 1.9.7
* [ruby](https://www.ruby-lang.org/ "ruby") 2.4.1
* [rake](http://docs.seattlerb.org/rake/ "rake") 12.0.0

### set up environment
for windows pc
``` cmd
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
cinst packages.config
```

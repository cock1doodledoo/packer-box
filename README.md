packer-box
==========
tool-set for building my base-box

### specs of builded box
* [ubuntu](http://www.ubuntu.com/server "ubuntu") 14.04
* Japanese keyboad

### depend on
* [packer](https://www.packer.io/ "packer") 0.9.0
* [virtualbox](https://www.virtualbox.org/ "virtualbox") 5.0.16
* [vagrant](https://www.vagrantup.com/ "vagrant") 1.8.1
* [ruby](https://www.ruby-lang.org/ "ruby") 2.2.4
* [rake](http://docs.seattlerb.org/rake/ "rake") 10.4.2

### set up environment
for windows pc
``` cmd
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
cinst packages.config
gem install rake
```

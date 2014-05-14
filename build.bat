set VM_NAME=base
set LOG_FILE=build.log

if exist output-virtualbox-iso\ rmdir /s /q output-virtualbox-iso
if exist "%USERPROFILE%\VirtualBox VMs\%VM_NAME%" rmdir /s /q "%USERPROFILE%\VirtualBox VMs\%VM_NAME%"

echo --- build start at %time% --- >> %LOG_FILE%
packer build template.json >> %LOG_FILE%
echo --- build finished at %time% --- >> %LOG_FILE%
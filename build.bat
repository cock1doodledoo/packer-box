@echo off

for /f "tokens=2" %%t in ('findstr \"hostname\": template.json') do set STR=%%t

set VM_NAME=%STR:~1,-2%
set LOG_FILE=build.log

if exist %LOG_FILE% del %LOG_FILE%
if exist %VM_NAME%.box del %VM_NAME%.box
if exist output-virtualbox-iso\ rmdir /s /q output-virtualbox-iso
if exist "%USERPROFILE%\VirtualBox VMs\%VM_NAME%" rmdir /s /q "%USERPROFILE%\VirtualBox VMs\%VM_NAME%"

echo --- build start at %time% --- >> %LOG_FILE%
packer build template.json >> %LOG_FILE%
echo --- build finished at %time% --- >> %LOG_FILE%

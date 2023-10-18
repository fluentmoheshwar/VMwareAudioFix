@echo off
title VMwareAudioFix Installer
echo Make sure VirtualBox is installed.
echo.
echo Installing VMwareAudioFix...
set PATH=C:\Program Files\Oracle\VirtualBox;%PATH%
vboxmanage unregistervm VMAudioBack
vboxmanage unregistervm VMwareAudioFix
mkdir "%USERPROFILE%\VirtualBox VMs\VMwareAudioFix"
copy /y "%~dp0\VMwareAudioFix.vbox" "%USERPROFILE%\VirtualBox VMs\VMwareAudioFix\VMwareAudioFix.vbox"
vboxmanage registervm "%USERPROFILE%\VirtualBox VMs\VMwareAudioFix\VMwareAudioFix.vbox"
echo Starting VMwareAudioFix...
echo You can also start manually later from VirtualBox. Make sure to headless start.
VBoxHeadless.exe -s VMwareAudioFix -start-paused

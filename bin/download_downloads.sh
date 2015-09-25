#!/bin/bash

source `dirname $0`/main.sh

# for ubuntu packages, see
#  http://askubuntu.com/questions/219828/getting-deb-package-dependencies-for-an-offline-ubuntu-computer-through-windows

cd ../downloads

# Javascript
# ----------

mkdir -p Javascript 
cd Javascript

wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
# form https://support.google.com/chrome/answer/126299?hl=de
wget https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BEC81A94B-34FE-C1FE-9AF6-D023EFAA7A41%7D%26lang%3Den%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers/update2/installers/ChromeStandaloneSetup.exe
wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg

cd ..

# Python
# ------

mkdir -p Python
cd Python

# ubuntu has Python
wget https://www.python.org/ftp/python/3.5.0/python-3.5.0.exe
wget https://www.python.org/ftp/python/3.5.0/python-3.5.0-macosx10.6.pkg
wget https://www.python.org/ftp/python/3.5.0/python-3.5.0-macosx10.5.pkg

cd ..

mkdir -p Editor
cd Editor

# Sublime
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.zip
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20Setup.exe

# Notepad++
wget https://notepad-plus-plus.org/repository/6.x/6.8.3/npp.6.8.3.Installer.exe

cd ..

# Arduino
# -------

mkdir Arduino
cd Arduino

wget http://downloads.arduino.cc/arduino-1.6.5-r5-linux64.tar.xz
wget http://downloads.arduino.cc/arduino-1.6.5-r5-windows.exe
wget http://downloads.arduino.cc/arduino-1.6.5-r5-windows.zip
wget http://downloads.arduino.cc/arduino-1.6.5-r5-macosx.zip
wget http://downloads.arduino.cc/arduino-1.6.5-r5-linux32.tar.xz

cd ..


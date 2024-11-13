#!/bin/bash

# Unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

finish() {
  local ret=$?
  if [ ${ret} -ne 0 ] && [ ${ret} -ne 130 ]; then
    echo
    echo "ERROR: Failed to setup XFCE on Termux."
    echo "Please refer to the error message(s) above"
  fi
}

trap finish EXIT

clear

echo ""
echo "This script will install XFCE Desktop in Termux"
echo ""
read -r -p "Please enter username: " username </dev/tty

termux-change-repo
pkg update -y -o Dpkg::Options::="--force-confold"
pkg upgrade -y -o Dpkg::Options::="--force-confold"
sed -i '12s/^#//' $HOME/.termux/termux.properties

# Display a message 
clear -x
echo ""
echo "Setting up Termux Storage access." 
# Wait for a single character input 
echo ""
termux-setup-storage
read -n 1 -s -r -p "Press any key to continue..."

pkgs=('wget' 'unzip' 'x11-repo' 'tur-repo')

pkg update
pkg install "${pkgs[@]}" -y -o Dpkg::Options::="--force-confold"

#Create default directories
mkdir -p Desktop
mkdir -p Downloads

#Download repository
wget https://github.com/rafaelnsantos/termux-xfce/archive/refs/heads/main.zip

unzip main.zip

cd termux-xfce-main

chmod +x *.sh

./xfce.sh
./extras.sh
./theme.sh "$username"
./utils.sh

source $PREFIX/etc/bash.bashrc
termux-reload-settings

clear -x
echo ""
echo ""
echo "Setup completed successfully!"
echo ""
echo "You can now connect to your Termux XFCE4 Desktop to open the desktop use the command start"
echo ""
echo "This will start the termux-x11 server in termux and start the XFCE Desktop and then open the installed Termux-X11 app."
echo ""
echo "To exit, double click the Kill Termux X11 icon on the panel."
echo ""
echo "Enjoy your Termux XFCE4 Desktop experience!"
echo ""
echo ""

#Cleanup
cd
rm main.zip
rm -rf termux-xfce-main
rm install.sh

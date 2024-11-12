#!/bin/bash

#Start script
wget https://raw.githubusercontent.com/rafaelnsantos/termux-xfce/main/files/start
chmod +x start
mv start $PREFIX/bin

#Shutdown Utility
wget https://raw.githubusercontent.com/rafaelnsantos/termux-xfce/main/files/kill_termux_x11
chmod +x kill_termux_x11
mv kill_termux_x11 $PREFIX/bin

#Create kill_termux_x11.desktop
wget https://raw.githubusercontent.com/rafaelnsantos/termux-xfce/main/files/kill_termux_x11.desktop
chmod +x kill_termux_x11.desktop
mv kill_termux_x11.desktop $PREFIX/share/applications
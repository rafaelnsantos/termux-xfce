#!/bin/bash

#Start script
chmod +x files/start
mv files/start $PREFIX/bin

#Shutdown Utility
chmod +x files/kill_termux_x11
mv files/kill_termux_x11 $PREFIX/bin

#Create kill_termux_x11.desktop
chmod +x files/kill_termux_x11.desktop
mv files/kill_termux_x11.desktop $PREFIX/share/applications
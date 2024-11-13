#!/bin/bash

pkgs=('virglrenderer-android' 'pulseaudio' 'xfce4' 'termux-x11-nightly')

#Install xfce4 desktop and additional packages
pkg install "${pkgs[@]}" -y -o Dpkg::Options::="--force-confold"

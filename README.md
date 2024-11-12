# Termux_XFCE

Sets up a termux XFCE desktop . This setup uses [Termux-X11](https://github.com/termux/termux-x11/releases).

You only need to pick your username and follow the prompts. This will take roughly 4GB of storage space. Please note, this can be a lengthy process. Keep in mind that as you install applications, they will consume more storage space. 

# Install

Install [Termux](https://f-droid.org/repo/com.termux_1000.apk) from F-Droid

Install [Termux-X11](https://github.com/termux/termux-x11/releases/download/nightly/app-arm64-v8a-debug.apk)

To install run this command in termux

```
curl -sL https://raw.githubusercontent.com/rafaelnsantos/termux-xfce/main/install.sh -o install.sh && chmod +x install.sh && ./install.sh
```

# Starting the desktop
  
Use the command ```start``` to initiate a Termux-X11 session
  
This will start the termux-x11 server, XFCE4 desktop and open the Termux-X11 app right into the desktop. 


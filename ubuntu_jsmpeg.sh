#!/bin/bash
apt update
apt install -y xvfb fluxbox xterm
wget https://github.com/sussygamedeveloper/play-with-docker-novnc/raw/main/jsmpeg-vnc-linux_FIX_FOR_FAKEPORT.zip
unzip jsmpeg-vnc-linux_FIX_FOR_FAKEPORT.zip
Xvfb :1 -screen 1 1280x1024x24 &
./jsmpeg-vnc -display_number 1 -port 80 &
fluxbox &

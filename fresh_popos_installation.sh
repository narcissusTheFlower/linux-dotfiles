#/bin/bash

sudo su; 
apt update; 
apt upgrade -y

echo "~~~CONFIGUREING NEOFETCH AND FIXING SOUND~~~"
echo "neofetch" >> ~/.bashrc;
echo "options snd-hda-intel power_save=0 power_save_controller=N" >> /etc/modprobe.d/alsa-base.conf

echo "~~~INSTALLING PACKAGES~~~"
apt install discord, boxes, netstat-tools, sensors, neofetch, flameshot, git, obs-studio, postman, okular, postgresql, openjdk-17-jdk, openjdk-17-doc, openjdk-17-source -y;
sleep 2;
reboot;
#wget https://s3.amazonaws.com/outline-releases/client/linux/stable/Outline-Client.AppImage
#confgiure harddrive (chmod, chown)
#disable sudo with `sudo visudo` and then at the end of the file add next line:
#"user" ALL=(ALL) NOPASSWD: ALL
#configure gnome extentions through the website first and then import settings from "dash-to-panel-gnome-extentions" in this repo


#/bin/bash

sudo su; 
apt update; 
apt upgrade -y

echo "~~~CONFIGUREING NEOFETCH AND FIXING SOUND~~~"
echo "neofetch\n" >> ~/.bashrc;
echo "options snd-hda-intel power_save=0\npower_save_controller=N" >> /etc/modprobe.d/alsa-base.conf

echo "~~~INSTALLING PACKAGES~~~"
apt install discord, boxes, netstat-tools, sensors, neofetch, flameshot, git, obs-studio, postman, okular, postgresql, openjdk-17-jdk, openjdk-17-doc, openjdk-17-source -y

#confgiure harddrive (chmod, chown)
#disable sudo with `sudo visudo` and then at the end of the file add next line:
#"user" ALL=(ALL) NOPASSWD: ALL



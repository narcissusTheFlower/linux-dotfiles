#/bin/bash

sudo su; 
apt update; 
apt upgrade -y

echo "~~~CONFIGUREING NEOFETCH AND FIXING SOUND~~~"
echo "neofetch" >> ~/.bashrc;
echo "options snd-hda-intel power_save=0 power_save_controller=N" >> /etc/modprobe.d/alsa-base.conf


echo "~~~INSTALLING PACKAGES~~~"
apt install alsa-tools discord boxes sensors neofetch flameshot obs-studio okular postgresql openjdk-17-jdk openjdk-17-doc openjdk-17-source -y;
sleep 2;
reboot;

#in alsa-mixer change automute to "disabled"
#the issue where the sound card will go into power-save mode will fix itself after some alsactl restore and reboots ig?? it has always been random for me but always fixed itself in the end :v
#wget https://s3.amazonaws.com/outline-releases/client/linux/stable/Outline-Client.AppImage
#confgiure harddrive (chmod, chown)
#disable sudo with `sudo visudo` and then at the end of the file add next line:
#"user" ALL=(ALL) NOPASSWD: ALL
#configure gnome extentions through the website first and then import settings from "dash-to-panel-gnome-extentions" in this repo
#dash to panel extention https://extensions.gnome.org/extension/1160/dash-to-panel/
#remove blur https://extensions.gnome.org/extension/2935/control-blur-effect-on-lock-screen/


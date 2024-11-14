#For all distros
#Go into `alsamixer` change auto-mute to disabled
#The issue where the sound card will go into power-save mode will fix itself after some alsactl restore and reboots ig?? it has always been random for me but always fixed itself in the end :v
echo "options snd-hda-intel power_save=0 power_save_controller=N" >> /etc/modprobe.d/alsa-base.conf #if /etc/modprobe.d/alsa-base.conf does not exist create it
modprobe -r snd-hda-intel && modprobe snd-hda-intel

#For OpeneSuse Leap
sudo zypper addrepo -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Leap_$releasever/' packman
sudo zypper ref
sudo zypper update
sudo zypper dup --from pacman --allow-vendor-change

sudo zypper in gnome-boxes git traceroute

git config --global user.name "narcissusTheFlower"
git config --global user.email narcissustheflower2047@gmail.com


#For apt based distros
echo "~~~INSTALLING PACKAGES~~~"
apt install alsa-tools discord boxes sensors neofetch flameshot obs-studio okular postgresql openjdk-17-jdk openjdk-17-doc openjdk-17-source strawberry traceroute -y;
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/obsidian_1.5.12_amd64.deb;

#confgiure harddrive (chmod, chown)
#disable sudo with `sudo visudo` and then at the end of the file add next line:
#"user" ALL=(ALL) NOPASSWD: ALL

#configure gnome extentions through the website first and then import settings from "dash-to-panel-gnome-extentions" in this repo
#dash to panel extention https://extensions.gnome.org/extension/1160/dash-to-panel/
#remove blur https://extensions.gnome.org/extension/2935/control-blur-effect-on-lock-screen/
#removable media icon https://extensions.gnome.org/extension/7/removable-drive-menu/
#sound extention https://extensions.gnome.org/extension/906/sound-output-device-chooser/

#Screenshot
#Remove default gnome keyboard shortcut in Settings -> Keyboard -> Keyboard Shortcuts. Find "Interactive screenshot" option and remove the key
#Then at the bottom of shortcuts create a custom one and bind it to command "flameshot gui"

# How to setup your new linux machine
# su -
# apt-get install sudo
# sudo adduser senders sudo
# exit
# logout
# sign-in again
sudo apt-get install vim curl i3 suckless-tools git lightdm network-manager apt-transport-https network-manager-gnome thunar xfce4-notifyd firefox-esr fonts-font-awesome
sudo service network-manager start

# setup wifi
# add contrib and non-free to apt sources
sudo apt-get update; sudo apt-get install firmware-iwlwifi
sudo modprobe -r iwlwifi
sudo modprobe iwlwifi

# setup wifi in network-manager / nm-applet

# navigate to docker ce site
# add apt repo
# #install docker-ce
# sudo apt-get install docker-ce
# sudo adduser senders docker
#sudo service docker start

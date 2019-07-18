yes | sudo pacman -S yay

#nopass
sudo cp ./49-nopasswd_global.rules /etc/polkit-1/rules.d/49-nopasswd_global.rules

#pamac por octopi
yes | yay -R alpm-octopi-utils octopi-notifier-frameworks octopi
yes | yay -S pamac pamac-tray-appindicator

#Kernel
yes | yay -S linux-latest linux-latest-headers linux-lts linux-lts-headers


#driver wifi
yes | yay -S rtl8821ce-dkms-git

#optimizar
yes | sudo cp nano.sh /etc/profile.d/
yes | sudo cp home_path.sh /etc/profile.d/

yes | sudo cp makepkg.conf /etc/

yes | yay -S systemd-swap
yes | cp zram.conf /etc/systemd/zram.conf.d/
sudo systemctl enable --now systemd-swap

#R
yes | yay -S r tk jre-openjdk-headless jdk-openjdk
sudo R CMD javareconf

#Libreoffice
yes | yay -R calligra
yes | yay -S libreoffice-fresh


#Workspace
yes | yay -S python python-pip pyside2 python-paramiko python-boto3 aws-cli python-pandas x2goclient sshpass
cd ~
mkdir bin
cd bin
git clone https://danielfm123@bitbucket.org/datarts/workspace.git
yes | cp ~/bin/workspace/workspace.desktop  ~/.local/share/applications/

#bash
cd ~/bin
git clone https://danielfm123@bitbucket.org/datarts/bash.git

#cleanup
yes | yay -Scc

balooctl disble

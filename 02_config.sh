yes | sudo pacman -S yay

#optimizar
yes | sudo cp nano.sh /etc/profile.d/
yes | sudo cp home_path.sh /etc/profile.d/

yes | sudo cp makepkg.conf /etc/

yes | yay -S systemd-swap
yes | cp zram.conf /etc/systemd/zram.conf.d/
sudo systemctl enable --now systemd-swap

#R
yes | yay -S r tk jre-openjdk-headless jdk-openjdk
sudo R CMD javarenconf

#Workspace
yes | yay -S python python-pip pyside2 python-paramiko python-boto3 aws-cli python-pandas x2go sshpass
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
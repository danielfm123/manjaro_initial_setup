#R
yes | yay -S r tk jre-openjdk-headless jdk-openjdk
sudo R CMD javareconf


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


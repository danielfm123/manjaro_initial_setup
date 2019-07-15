echo primero vamos a hacer que no sudo pida contraseña
sudo cp ./90-nopass /etc/sudoers.d/90-nopass
sudo pacman-mirrors -c Chile
yes '' | pacman -Syyuu
sudo reboot

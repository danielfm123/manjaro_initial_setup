yes | sudo pacman -S yay

#nopass
sudo cp ./49-nopasswd_global.rules /etc/polkit-1/rules.d/49-nopasswd_global.rules

#pamac por octopi
yes | yay -R alpm-octopi-utils octopi-notifier-frameworks octopi
yes | yay -S pamac pamac-tray-appindicator

#Kernel
yes | yay -S linux-latest linux-latest-headers linux-lts linux-lts-headers


# driver wifi pc oficina
# yes | yay -S rtl8821ce-dkms-git

#optimizar
yes | sudo cp nano.sh /etc/profile.d/
yes | sudo cp home_path.sh /etc/profile.d/

yes | sudo cp makepkg.conf /etc/

yes | yay -S systemd-swap
yes | cp zram.conf /etc/systemd/zram.conf.d/
sudo systemctl enable --now systemd-swap

# Libreoffice (ya no se usa por que pegunta en instalacion)
# yes | yay -R calligra
# yes | yay -S libreoffice-fresh

#cleanup
yes | yay -Scc

balooctl disble

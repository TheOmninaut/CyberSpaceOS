#!/bin/bash

# This file is the same thing as main file except it prompts for confirmation and as a result doesnt seperate types or it would take forever. This is a much quicker process than the main file and has a very tiny footprint, under 100 lines of code. Stripped of all the fancy stuff so only option is to install everything. Eventually the main bash file will be replaced by a simple program as a binary so theres no dependencies. However, to keep this as simple as possible, this will remain a bash script.

echo -e "
                     ----------Omninaut Presents----------
    _________________________________________________________________________
    \e[36m_____          __     _____   ____   _____   _____  ____    _____  _____\e[0m
   \e[36m/ ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \\  / ___/ / ___/\e[0m
  \e[36m/ /___ / /_/ / /    / / __/_  / _ \\   __\\ \\  / ___/ /  _  / / /__  / __/_\e[0m
 \e[36m/_____/ \\__  / /____/ /_____/ /_/ \\_\\ \\____/ /_/    /_/ /_/ /____/ /_____/\e[0m
___________\e[36m/ /\e[0m____________________________________________________________
                                                              \e[36mCyberSpace OS\e[0m
"
sleep 5

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cd ~
mkdir Backups
mkdir Projects
mkdir Temporary
cd Temporary

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sudo yay -Syu
cd ..

git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin
makepkg -si --skippgpcheck
cd ..

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# sudo pacman -S flatpak --noconfirm
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak update

sudo pacman -S awesome grub-customizer power-profiles-daemon firewalld fbset tmux cmus w3m ranger htop feh neofetch neovim git base-devel pkgfile man yakuake blender vlc calibre elisa kiwix-desktop audacity discord qbittorrent kdenlive flameshot libreoffice-fresh ksysguard qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libguestfs libvirt snes9x mupen64plus dolphin-emu cemu steam lutris openmw kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip qt5-base qt5-svg qt5-declarative qt5-quickcontrols

yay -S epy-ereader-git protonvpn fluent-reader-bin librewolf-bin vscodium-bin timeshift minecraft-launcher vbam-git mesen2-git plasma5-applets-window-buttons plasma5-applets-window-appmenu ocs-url

sudo snap install mapscii keepassxc

echo -e "\e[31mYuzu, Pcsx2 Rpcs3 & ePSXe are Appimages\e[0m"
kde-open https://yuzu-emu.org/downloads/
kde-open https://pcsx2.net/downloads
kde-open https://rpcs3.net/download
kde-open https://www.epsxe.com/download.php

cd ~
rm -r Temporary --force

sudo pacman -Rns plasma-wayland-session egl-wayland vim
sudo systemctl set-default multi-user.target
sudo systemctl enable power-profiles-daemon
sudo systemctl enable bluetooth
sudo pacman -Sc

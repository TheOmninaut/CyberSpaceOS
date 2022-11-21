#!/bin/bash

#------Omninaut Presents------
#          Arch Setup/Ricer



function prompt_setup {
clear
echo -e "------\e[36mOmninaut Arch Linux\e[0m------"
echo
echo -e "\e[32m1\e[0m: Install Programs"
echo -e "2: Install Rice Files"
echo -e "3: Rice Awesome & Terminal Programs"
echo -e "4: Choose Plasma Rice"
echo -e "\e[31mPress Any Other Key to Exit\e[0m"
echo
echo
read -p "Type Choice: " -n 1 -r

echo
echo
if [[ $REPLY =~ ^[1]$ ]]
then

install_programs
prompt_setup

elif [[ $REPLY =~ ^[2]$ ]]
then

rice_terminal
prompt_setup

elif [[ $REPLY =~ ^[3]$ ]]
then

rice_awesome
prompt_setup

elif [[ $REPLY =~ ^[4]$ ]]
then

rice_plasma
prompt_setup

else
clear
echo -e "\e[32mEnjoy!\e[0m"

fi
}

function install_programs {

sudo pacman -Rns plasma-wayland-session egl-wayland
sudo pacman -Syu
sudo systemctl set-default multi-user.target

echo -e "\e[31mInstalling Terminal Programs\e[0m"
sleep 2
sudo pacman -S fbset tmux cmus w3m ranger htop feh neofetch vim git pkgfile man

echo -e "\e[31mInstalling Desktop Programs\e[0m"
sleep 2
sudo pacman -S yakuake steam blender vlc calibre elisa awesome kiwix-desktop lutris audacity discord

cd ~
mkdir Temporary
cd Temporary

git clone https://aur.archlinux.org/yay.git
cd yay-git
makepkg -si
sudo yay -Syu

cd ..
git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin
makepkg -si --skippgpcheck

yay -S epy-git protonvpn fluent-reader librewolf-bin

echo
echo
echo -e "\e[31mNOTICE! type 'y' then press 'Enter' for the following prompts until word DONE! appears\e[0m"
cd ~
rm -r Temporary

echo -e "\e[32mDone!\e[0m"
sleep 2

prompt_setup
}

function load_kde_rice {

echo NOT IMPLEMENTED YET
prompt_setup

}


function rice_terminal {

echo -e "\e[32mNOT FINISHED! DID NOTHING. Terminal Still Lame\e[0m"
sleep 2

}

function rice_awesome {

echo -e "\e[32mNOT FINISHED! DID NOTHING. Now how will i get on Unixporn\e[0m"
sleep 2

}

function rice_plasma {

echo -e "Install Required Rice Files"
echo -e "Choose Rice"

read -p "Type Choice: " -n 1 -r
echo
echo

if [[ $REPLY =~ ^[1]$ ]]
then

#---------------------OSX----------------------

yay -S plasma5-applets-window-buttons plasma5-applets-window-appmenu
sudo pacman -S kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip

# Global Theme
cd ~/Downloads
git clone https://github.com/vinceliuice/Monterey-kde
cd Monterey-kde
./install.sh
cd sddm
./install.sh

# Icons
cd ~/Downloads
git clone https://github.com/vinceliuice/WhiteSur-icon-theme
cd WhiteSur-icon-theme
./install.sh --theme all

# Cursor
cd ~/Downloads
git clone https://github.com/vinceliuice/WhiteSur-cursors
cd WhiteSur-cursors
./install.sh

#Application Style
cd ~/Downloads
git clone https://github.com/vinceliuice/Colloid-icon-theme
cd Colloid-icon-theme
./install.sh --theme all --scheme all
cd ..
git clone https://github.com/vinceliuice/Colloid-gtk-theme
cd Colloid-gtk-theme
./install.sh

# KWin Scripts
cd ~/Downloads
git clone https://github.com/esjeon/kwin-forceblur
git clone https://github.com/Archid3vtus/kwin-macsimize
git clone https://github.com/psifidotos/kwinscript-window-colors
git clone https://github.com/psifidotos/Latte-Dock
cd kwin-forceblur
./pack.sh
./install.sh
cd ..
cd kwin-macsimize
plasmapkg2 -i .
cd ..
cd kwinscript-window-colors
plasmapkg2 -i .
cd ..
cd Latte-Dock/kwin_scripts/activatelattelaunchermenu
plasmapkg2 -i .

cd ~/Downloads
rm -r Latte-Dock

git clone https://github.com/KDE/latte-dock
cd latte-dock
./install.sh



#---------------------Windows 1x----------------------
# Global Theme
cd ~/Downloads
git clone https://github.com/yeyushengfan258/Win11OS-kde
cd Win11OS-kde
./install.sh
cd sddm-dark
./install.sh
cd ..
cd sddm-light
./install.sh

# git clone https://github.com/adhec/plasmaX

# Icons
cd ~/Downloads
git clone https://github.com/yeyushengfan258/Win11-icon-theme
cd Win11-icon-theme
./install.sh -a
cd ..
git clone https://github.com/B00merang-Artwork/Windows-10
mv ~/Downloads/Windows-10 ~/.local/share/icons/



#-------------------Windows XP--------------
#unzip transformation pack
#move its contents where it belongs

cd ~/Downloads
git clone https://www.opencode.net/phob1an/expose
cd expose
#move contents where they belong/which ones are needed/used
cd ..
git clone https://github.com/B00merang-Project/Windows-XP
#move it where it belongs 

#-------------------Windows 95--------------



sleep 2
prompt_setup

elif [[ $REPLY =~ ^[2]$ ]]
then

clear
echo NOT IMPLEMENTED


sleep 2
prompt_setup

else
echo -e "\e[32mNOT FINISHED! DID NOTHING. Unsleek. Unmodern. Un- A e s t h e t i c\e[0m"
sleep 2
prompt_setup

fi

}




# Upon first loading script, present options
prompt_setup

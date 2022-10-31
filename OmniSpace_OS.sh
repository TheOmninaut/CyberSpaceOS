#!/bin/bash

#------Omninaut Presents------
#          Arch Ricer


#--------------------Install Arch--------------------
#	Id like to find a way to automate this, maybe fork the archinstaller or something but
#	for now i have no idea of how to do that so before this script can be run, do the steps below

# pacman -Syy
# pacman -S archinstall
# archinstall

# Then run through the installer:
# everything US & English
# wipe all drives and format using ext4
# add passwords, user (sudo), and computer name
# Specify Profile and choose desktop Kde
# pulse audio
# copy iso network config
# and do multilib library
# Install
# ....Wait
# then choose NO to charroot and type reboot to finish install.
# upon rebooting change session to X11

#thinking it may be best to make 3 users: Joey for PC stuff, Omni for Gaming, & root


#	same for the ricing scripts, im unsure if its worth writing out commands to follow to rice
#	a setup or if its better to just create an ISO and technically just have a Distro


#-------------_Terminal RICE-----------------------
# 🪐
# .bashrc
#  white before vv       cyan vv   user    blue vv   dir    cyan vv   > [space] white after
# PS1='\[\033[1;37m\]\[\033[1;36m\][\u]\[\033[1;34m\] \w\[\033[1;36m\]> \[\033[1;37m\]'
# norm color teal, best for yakuake
# PS1='\[\033[1;36m\]\[\033[1;37m\][\u]\[\033[1;34m\] \w\[\033[1;37m\]> \[\033[1;36m\]'


#---------------KDE RICE----------------------------------
#   Could do a custom RICE with transparency and maybe one day my floating taskbar idea but for now its not figured out yet. What i really want to do is figure out how to rice KDE FULLY & correctly and use what ive found and combine it with customizing things the correct way and basically creating my own versions of each of the following "modes": Clean/transparent, Win10/11, WinXP, Win95, Mac OSX, & my custom floating taskbar thing. DO NOT just use assets  from these files to build themes, actually use vectors for icons & 4k images for backgrounds OR a solid color through code for performance. Then, if possible there should be an easy way to switch between them.

#       What ive found so far/what to use to build upon
#   Windows 10: Win11 OS Dark & Window Decoration: WindowsK10
#   Windows XP: Expose & windows xp global transformation pack from kde store & Win XP aurore window decorations
#       https://store.kde.org/p/1885548/
#   Windows 95: windows classic window decorations.
#   Remove left 'pin' & 'app' options under window Decorations -> titlebar buttons


#-------yakuake
#   Ctrl + Shift + ,
#   change skin to "TabsOnly"
#   Create custom theme to change colors to transparent black background & Teal text (DO AFTER CHANGING BASHRC)


function prompt_setup {
echo
echo
echo -e "------\e[36mOmninaut Arch Installer\e[0m------"
echo
echo -e "\e[32m1\e[0m: Install Programs"
echo -e "2: Rice Terminal & Terminal Programs"
echo -e "3: Rice Awesome"
echo -e "4: Rice Plasma"
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
echo "\e[36mEnjoy!\e[0m"

fi
}

function install_programs {

sudo pacman -R plasma-wayland-session egl-wayland
sudo pacman -Syu

sudo systemctl set-default multi-user.target

sudo pacman -S fbset tmux cmus w3m ranger htop feh neofetch vim git pkgfile man

sudo pacman -S yakuake steam blender vlc calibre elisa awesome kiwix-desktop lutris audacity discord

cd
mkdir Temporary
cd Temporary

git clone https://aur.archlinux.org/libpamac-aur.git
cd libpamac-aur
makepkg -si

cd ..
git clone https://aur.archlinux.org/pamac-aur.git
cd pamac-aur
makepkg -si

cd ..
git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin
makepkg -si --skippgpcheck

sudo pamac install epy-git protonvpn fluent-reader
sudo pamac update librewolf-bin

echo
echo
Echo "\e[31mNOTICE! type 'Y' then 'Enter' for the following 4 prompts\e[0m"
cd
rm -r Temporary

echo -e "\e[32mDone!\e[0m"
sleep 2

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

echo -e "\e[32mNOT FINISHED! DID NOTHING. Unsleek. Unmodern. Un- A e s t h e t i c\e[0m"
sleep 2

}


# Upon first loading script, present options
prompt_setup

#!/bin/bash

#------Omninaut Presents------
#       Arch Setup/Ricer


#//>> Installing Arch

# iwctl
# device wlan0 set-property Powered on
# station wlan0 scan
# station wlan0 connect NETWORK_NAME_HERE
# exit
# pacman -Syy
# pacman -S archlinux-keyring
# pacman -Sy python archinstall
# archinstall
# Include git during install under "additional packages"
# cd Downloads
# git clone https://github.com/theomninaut/archsetup
# cd ArchSetup
# chmod +x CyberSpace6_OS.sh
# ./CyberSpace6_OS.sh

#//<<



#//>> Startup Ascii Animation
function play_animation {

spin_anim=("
       ▄▄▀█▀▄▄
   ▄▄▀▀   █   ▀▀▄▄
  █▀▀▀▀▀▀█▀█▀▀▀▀▀▀█
  █     █   █     █ █▀ ▄ ▄ █▄  █▀ █▀▄ ▄▀▀ █▀▄ █▀█ █▀ █▀
  ██   █     █   ██ █▄ ▀▄█ █▄█ ██ █▀▄ ▄██ █▀  █▀█ █▄ ██
  █ █ █       █ █ █     ▄▀
  █▄▄█▄▄▄▄▄▄▄▄▄█▄▄█  |                    *
   ▀▀█▄      ▄█▄▀▀  -+-
       ▀▀▄▄▄▀▀       |
" "
       ▄▄▀▀█▄▄                                          *
   ▄▄▀▀     █ ▀▀▄▄
  ██▀▀▀▀▀▀▀█▀█▀▀▀▀█
  █ █     █   █   █ █▀ ▄ ▄ █▄  █▀ █▀▄ ▄▀▀ █▀▄ █▀█ █▀ █▀
  █  █   █     █  █ █▄ ▀▄█ █▄█ ██ █▀▄ ▄██ █▀  █▀█ █▄ ██
  █   █ █       █ █     ▄▀                |
  █▄▄▄▄█▄▄▄▄▄▄▄▄▄██  '                   -+-
   ▀▀▄▄▀▄     ▄▄▀▀ -   -                  |
       ▀▀█▄▄▀▀       ,
" "
       ▄▄▀▀█▄▄                                         -+-
   ▄▄▀▀      ▀█▀▄▄          *                           |
  ██▀█▀▀▀▀▀▀▀█▀█▀▀█
  █   █     █   █ █ █▀ ▄ ▄ █▄  █▀ █▀▄ ▄▀▀ █▀▄ █▀█ █▀ █▀
  █    █   █     ██ █▄ ▀▄█ █▄█ ██ █▀▄ ▄██ █▀  █▀█ █▄ ██
  █     █ █       █     ▄▀                '      
  █▄▄▄▄▄▄█▄▄▄▄▄▄▄▄█                     -   -
   ▀▀▄▄  █    ▄▄▀▀                        ,
       ▀▀▄█▄▀▀
" "
       ▄▄█▀▀▄▄              |                         -   -
   ▄▄▀█▀      ▀▀▄▄         -+-                          ,
  █▀▀█▀█▀▀▀▀▀▀▀█▀██         |
  █ █   █     █   █ █▀ ▄ ▄ █▄  █▀ █▀▄ ▄▀▀ █▀▄ █▀█ █▀ █▀
  ██     █   █    █ █▄ ▀▄█ █▄█ ██ █▀▄ ▄██ █▀  █▀█ █▄ ██
  █       █ █     █     ▄▀
  █▄▄▄▄▄▄▄▄█▄▄▄▄▄▄█
   ▀▀▄▄    █  ▄▄▀▀
       ▀▀▄█▄▀▀
" "
       ▄▄█▀▀▄▄              '
   ▄▄▀▀ █     ▀▀▄▄        -   -
  █▀▀▀▀█▀█▀▀▀▀▀▀▀██         ,
  █   █   █     █ █ █▀ ▄ ▄ █▄  █▀ █▀▄ ▄▀▀ █▀▄ █▀█ █▀ █▀
  █  █     █   █  █ █▄ ▀▄█ █▄█ ██ █▀▄ ▄██ █▀  █▀█ █▄ ██
  █ █       █ █   █     ▄▀
  ██▄▄▄▄▄▄▄▄▄█▄▄▄▄█                       
   ▀▀▄▄     ▄▀▄▄▀▀   *
       ▀▀▄▄█▀▀
")

name_anim=("
       ▄▄▀█▀▄▄
   ▄▄▀▀   █   ▀▀▄▄
  █▀▀▀▀▀▀█▀█▀▀▀▀▀▀█
  █     █   █     █ █▀ ▄ ▄ █▄  █▀ █▀▄      ▄▀▀ █▀▄ █▀
  ██   █     █   ██ █▄ ▀▄█ █▄█ ██ █▀▄ ▄██ █▀  █▀█ █▄ ██ 
       █ █ █       █ █ █     ▄▀
       █▄▄█▄▄▄▄▄▄▄▄▄█▄▄█                        
       ▀▀█▄      ▄█▄▀▀     
              ▀▀▄▄▄▀▀        
" "
       ___          __  ▀█▀█▀
  █    __/ __  __  / /__  █ █▀ ▄ ▄ █▄  █__   _____  ____ █▀▄ █▀
  ██   __ / /_/ / /    / ██ █▄ ▀▄█ █▄█ █_/  /    / /    █▀█ █▄ ██ 
       _/ \__  / /____/    █ █ █     ▄▀ \  / ___/ /  _           
            / /  ▄▄▄▄█▄▄█               / /_/    /_/ /_/               
                                  ▄▀▀                   
   
" "
       ________________________________________________________________________________________
      / _____            __      _____    ____    _____    _____   ____     _____   _____     /
     / / ___/\ __  __   / /\_   / ___/\  /   /\  / ___/\  /    /\ /    \   / ___/\ / ___/\   /
    / / /___\// /\/ /\ /    /\ / __/_\/ / _ \ /  __\ \ / / ___/ //  _  /\ / /__ \// __/_\/  /
   / /_____/\ \__  / //____/ //_____/\ /_/ \_\  \____/\ /_/\__\//_/ /_/ //____/\ /_____/\  /
  /  \_____\/   /_/ / \____\/ \_____\/ \_\/ \_\  \___\/ \_\/    \_\/\_\/ \____\/ \_____\/ /
 /______________\_\/_____________________________________________________________________/

")

#StartupAnim v-- num of times to loop anim
for i in {1..4}
do

for item in "${spin_anim[@]}"
do
clear
echo "$item"
sleep .2
done

done

# Then Transision Anim
for item in "${name_anim[@]}"
do
clear
echo "$item"
sleep .2
done


}

#//<<

#//>> Prompt Setup
function prompt_setup {
clear
echo -e "------\e[36mCyberSpace6\e[0m------"
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
#//<<

#//>> Install Programs
function install_programs {

sudo pacman -Rns plasma-wayland-session egl-wayland --noconfirm
sudo pacman -Syyuu --noconfirm
sudo pacman -S awesome grub-customizer --noconfirm
sudo systemctl set-default multi-user.target
sudo systemctl enable bluetooth

echo -e "\e[31mInstalling Terminal Programs\e[0m"
sleep 2
sudo pacman -S fbset tmux cmus w3m ranger htop feh neofetch neovim git base-devel pkgfile man --noconfirm

echo -e "\e[31mInstalling Desktop Programs\e[0m"
sleep 2
sudo pacman -S yakuake blender vlc calibre elisa kiwix-desktop audacity discord qbittorrent kdenlive flameshot libreoffice-fresh ksysguard --noconfirm

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo -e "\e[31mGames / Platforms\e[0m"
sleep 2
sudo pacman -S steam lutris openmw --noconfirm
yay -S minecraft-launcher --noconfirm

cd ~
mkdir Temporary
cd Temporary

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd ..

# sudo pacman -S flatpak --noconfirm
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak update

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
sudo yay -Syu --noconfirm

cd ..
git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin
makepkg -si --skippgpcheck --noconfirm

yay -S epy-ereader-git protonvpn fluent-reader-bin librewolf-bin vscodium-bin timeshift --noconfirm

sudo snap install mapscii keepassxc --noconfirm

echo -e "\e[31mVirutal Machines\e[0m"
sleep 2

sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libguestfs libvirt --noconfirm
# https://github.com/ntdevlabs/tiny11builder


read -p "Download Emulators? y/n" -n 1 -r

echo
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then

sudo pacman -S snes9x mupen64plus dolphin-emu cemu --noconfirm
yay -S vbam-git mesen2-git --noconfirm

# Yuzu, Pcsx2 Rpcs3 ePSXe --APPIMAGE (Download From Websites)
kde-open https://yuzu-emu.org/downloads/
kde-open https://pcsx2.net/downloads
kde-open https://rpcs3.net/download
kde-open https://www.epsxe.com/download.php
# Xenia can only run on Windows so get it setup on windows VM

fi


cd ~
rm -r Temporary --force

echo -e "\e[32mDone!\e[0m"
sleep 2

}
#//<<

#//>> Rice Plasma
function load_kde_rice {

echo -e "\e[31mDependencies for KDE Ricing\e[0m"
sleep 2
yay -S plasma5-applets-window-buttons plasma5-applets-window-appmenu ocs-url --noconfirm
sudo pacman -S kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip qt5-base qt5-svg qt5-declarative qt5-quickcontrols --noconfirm

# Plasma Customizer Saver   1298955
#Win11 Icons                1546069
#Win11 Theme                https://github.com/yeyushengfan258/Win11OS-kde
#win11 GTK                  1591292
#Win10 Theme                https://github.com/adhec/plasmaX
#Win10 Start Menu           1160672
#Win10 Application Style    1013482
#                           1195237
#                           1591292
#                           1013580
#Win10 Window Decoration    1172409
#Win10 Icons                1353712
#                           1387736
#Fluent GTK                 https://github.com/vinceliuice/Fluent-gtk-theme
#redstone GTK               1013482
#winxp                      1885548
#                           1479063
#win95                      1253201
#OSX                        https://github.com/vinceliuice/Monterey-kde
#OSX Icons                  1405756       https://github.com/vinceliuice/WhiteSur-icon-theme
# Colloid GTK Theme                     1661959
# Forced Blur Kwin Script               1294604
# Latte Window Colors Kwin Script       1290287
# Latte Active Launcher Kwin Script     1221344

echo -e "Ricing Programs"
#Yakuake
#VSCode -rust - explicit code folding - nord themes

}
#//<<

#//>> Rice Terminal
function rice_terminal {

echo -e "\e[32mNOT FINISHED! DID NOTHING. Terminal Still Lame\e[0m"
sleep 2

#Edit Bashrc

#
# ~/.bashrc
#

# if not running interactively, dont do anything
# [[ $- != *i* ]] && return
# alias ls='ls --color=auto'

#  white before vv       cyan vv   user    blue vv   dir    cyan vv   > [space] white after
# PS1='\[\033[1;37m\]\[\033[1;36m\][\u]\[\033[1;34m\] \w\[\033[1;36m\]> \[\033[1;37m\]'

# Custom bash commands
# alias de="sudo systemctl start sddm"
# alias bluetooth "sudo systemctl start bluetooth"
# alias omnispace="cd ~/Downloads/ && ./OmniSpace_OS.sh"
# alias logout="qdbus org.kde.ksmserver /KSMServer logout 0 3 3"
# alias uninstall="sudo pacman -Rns"
# alias install="sudo pacman -S"
# alias update="sudo pacman -Syyuu"


#Edit /etc/issue to display ascii_name

#                      ----------Omninaut Presents----------
#     _________________________________________________________________________
#     \e[36m_____          __     _____   ____   _____   _____  ____    _____  _____\e[0m
#    \e[36m/ ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \\  / ___/ / ___/\e[0m
#   \e[36m/ /___ / /_/ / /    / / __/_  / _ \\   __\\ \\  / ___/ /  _  / / /__  / __/_\e[0m
#  \e[36m/_____/ \\__  / /____/ /_____/ /_/ \\_\\ \\____/ /_/    /_/ /_/ /____/ /_____/\e[0m
# ___________\e[36m/ /\e[0m____________________________________________________________
#                                                       \r (\l)


}
#//<<

#//>> Rice Awesome
function rice_awesome {

echo -e "\e[32mNOT FINISHED! DID NOTHING. Now how will i get on Unixporn\e[0m"
sleep 2

}
#//<<

play_animation
prompt_setup

#----Custom Stuff to make----

# Grub Screen https://nx2.site/grub-ascii-theme
# KDE Recreations
# Diffs in endevour vs arch to apply to arch
# Game Launcher / visual Organizer (dear IMGUI)

# ----------TODO-------------------
# rewrite installer to do a full install with everything then add a second option to manually choose each thing. also change colors. 
# remake yakuake theme from scratch with a fresh install
# gather/complete instructions for each kde rice. THEN:
# 	bash it with files and make it autorun
# CHANGE directories to a temp location
# 	maybe add an option to save all downloaded files as backup to a folder after install
# change color theme for system overall to NORD & teal
# see if its possible to play sounds from terminal.
# 
# Make installer a graphical enviornment like archinstall. Make arrows move selection and have to press q to quit or choose menu option quit
# make installer a game

# ----------Links
# https://www.shellhacks.com/yes-no-bash-script-prompt-confirmation/
# https://github.com/ytdl-org/youtube-dl

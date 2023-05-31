#!/bin/bash

#------Omninaut Presents------
#        CyberSpace OS
#0.07

#//>> Installing Arch

# iwctl
# device wlan0 set-property Powered on
# station wlan0 scan
# station wlan0 connect NETWORK_NAME_HERE
# exit
# pacman -Syy
# pacman-key --init
# pacman -S archlinux-keyring
# pacman -Sy python archinstall
# archinstall
# Include git during install under "additional packages"
# cd Downloads
# git clone https://github.com/theomninaut/CyberSpaceOS
# cd CyberSpaceOS
# chmod +x CyberSpaceOS.sh
# ./CyberSpaceOS.sh


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


#//>> Create backup

sudo pacman -S archlinux-keyring git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Syu --noconfirm
yay -S timeshift --noconfirm
sudo timeshift --create --comments "Fresh Install"

#//<<-----

#//>> Install Programs
function install_programs {

       #//>> System Essentials & Initialization
echo -e "\e[31mSystem Essentials & Initialization\e[0m" && sleep 2

sudo pacman -Rns plasma-wayland-session egl-wayland vim --noconfirm
sudo pacman -Syyuu --noconfirm
sudo pacman -S grub-customizer power-profiles-daemon firewalld opendoas --noconfirm
echo permit :wheel | sudo tee /etc/doas.conf
doas systemctl set-default multi-user.target
doas systemctl enable power-profiles-daemon
doas systemctl enable bluetooth
cd ~
mkdir Backups
mkdir Projects
mkdir -p Applications
mkdir Temporary

cd Temporary

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
doas systemctl enable --now snapd.socket
doas ln -s /var/lib/snapd/snap /snap
cd ..

doas pacman -S flatpak --noconfirm
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak update

#//<<-----

       #//>> Development
echo -e "\e[31mDevelopment\e[0m" && sleep 2
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
doas pacman -S gcc gdb --noconfirm
#//<<-----

       #//>> Terminal Programs
echo -e "\e[31mInstalling Terminal Programs\e[0m" && sleep 2

doas pacman -S fbset tmux cmus w3m ranger htop feh neofetch neovim git base-devel pkgfile man --noconfirm
doas snap install mapscii --noconfirm

#//<<-----

       #//>> Installing KDE & Awesome

doas pacman -S xorg xorg-xinit
# echo exec startkde | doas tee ~/.xinitrc
doas pacman -S plasma awesome

#maybe (if not just stick to sddm i guess)
lightdm lightdm-gtk-greeter
doas systemctl enable lightdm.service

       #//<<-----

       #//>> Desktop Programs
echo -e "\e[31mInstalling Desktop Programs\e[0m" && sleep 2

cd ~/Temporary
git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin
makepkg -si --skippgpcheck --noconfirm

doas pacman -S yakuake blender vlc calibre elisa kiwix-desktop audacity discord qbittorrent kdenlive flameshot libreoffice-fresh ksysguard --noconfirm

yay -S epy-ereader-git protonvpn fluent-reader-bin librewolf-bin vscodium-bin timeshift --noconfirm

doas snap install keepassxc --noconfirm

#//<<-----

       #//>> Games / Platforms / Emulators
echo -e "\e[31mGames / Platforms / Emulators\e[0m" && sleep 2

doas pacman -S steam lutris openmw --noconfirm
doas pacman -S snes9x mupen64plus dolphin-emu vbam-sdl --noconfirm
yay -S minecraft-launcher --noconfirm
yay -S nestopia cemu --noconfirm
doas snap install ppsspp --noconfirm

echo -e "\e[31mYuzu, Pcsx2 Rpcs3 & ePSXe are Appimages\e[0m"
kde-open https://yuzu-emu.org/downloads/
kde-open https://pcsx2.net/downloads
kde-open https://rpcs3.net/download
kde-open https://www.epsxe.com/download.php

# Xenia can only run on Windows so get it setup on windows VM

#//<<-----

       #//>> Virtual Machines
echo -e "\e[31mVirutal Machines\e[0m" && sleep 2

doas pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libguestfs libvirt --noconfirm
# https://github.com/ntdevlabs/tiny11builder

#//<<-----

       #//>> Cleanup
echo -e "\e[31mCleanup\e[0m"

cd ~
rm -r Temporary --force
doas pacman -Sc --noconfirm

echo -e "\e[32mDone! Reboot Recommended\e[0m"
sleep 2
#//<<-----

}
#//<<

#//>> Rice Plasma
function load_kde_rice {

echo -e "\e[31mDependencies for KDE Ricing\e[0m"
sleep 2
yay -S plasma5-applets-window-buttons plasma5-applets-window-appmenu ocs-url --noconfirm
doas pacman -S kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip qt5-base qt5-svg qt5-declarative qt5-quickcontrols --noconfirm

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
# alias de="doas systemctl start sddm"
# alias bluetooth "doas systemctl start bluetooth"
# alias omnispace="cd ~/Downloads/ && ./OmniSpace_OS.sh"
# alias logout="qdbus org.kde.ksmserver /KSMServer logout 0 3 3"
# alias uninstall="doas pacman -Rns"
# alias install="doas pacman -S"
# alias update="doas pacman -Syyuu && doas pacman -Sc"


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

#//>>                ----Custom Stuff to make----

# Grub Screen https://nx2.site/grub-ascii-theme
# KDE Recreations
# Diffs in endevour vs arch to apply to arch
# Game Launcher / visual Organizer (dear IMGUI)

# ----------TODO-------------------
# rewrite installer to do a full install with everything then add a second option to manually choose each thing. also change colors. 
#       This includes the actual install of arch, aka no archinstall script. This will be the only thing needed besides an arch iso
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
# make a linux bash version of Tiny11's .bat except automate the downloading of the windows.iso & msdconfig or whatever additional file is needed. Basically automate somehow with this bash script, downloading windows 11, then stripping it and feeding it to the virtual machine. 
# find out if KDE's settings are saved into a file and also how to clear & edit files
# Maybe install KDE from a base terminal setup and that way wayland isnt installed and everything is clean. look into what archinstall does and see if its possible to just do it here. Then maybe just test it by having a copy of cyberspaceos on a flash drive

# ----------Links
# https://www.shellhacks.com/yes-no-bash-script-prompt-confirmation/
# https://github.com/ytdl-org/youtube-dl


#----------------------Steps----------------------
# 1) Finish the bash script and have it install and set everything up. 
# 2) Translate it into rust. Making it function identically but as a standalone binary
# 3) create options and terminal choices and changes that determine whats installed and changed
# 4) make ascii art and a "game" out of installing linux.
# 5) maybe make things more complicated with 3d to ascii art renderer and some insane customizations (if i feel like wasting my life) like choosing an init system and package manager. Basically it could reach its final evolution. Like going from ricing an installed arch to using archinstall to installing arch itself to doing linux from scratch and basically being able to make any distro by choosing its package manager and mirror list and desktop enviornment and everything. 

#//<<


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

for i in {1..4}
do

for item in "${spin_anim[@]}"
do
clear
echo "$item"
sleep .2
done

done

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
   / /_____/\ \__  / //____/ //_____/\ /_/ \_\ \\____/\ /_/\__\//_/ /_/ //____/\ /_____/\  /
  /  \_____\/   /_/ / \____\/ \_____\/ \_\/ \_\/ \___\/ \_\/    \_\/\_\/ \____\/ \_____\/ /
 /______________\_\/_____________________________________________________________________/

")

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

sudo pacman -Rns plasma-wayland-session egl-wayland
sudo pacman -Syu
sudo pacman -S awesome grub-customizer --noconfirm
sudo systemctl set-default multi-user.target

echo -e "\e[31mInstalling Terminal Programs\e[0m"
sleep 2
sudo pacman -S fbset tmux cmus w3m ranger htop feh neofetch neovim git pkgfile man timeshift --noconfirm

echo -e "\e[31mInstalling Desktop Programs\e[0m"
sleep 2
sudo pacman -S yakuake blender vlc calibre elisa kiwix-desktop audacity discord qbittorrent kdenlive flameshot libreoffice-fresh --noconfirm

echo -e "\e[31mDependencies for KDE Ricing\e[0m"
sleep 2
sudo pacman -S qt5-base qt5-svg qt5-declarative qt5-quickcontrols --noconfirm

echo -e "\e[31mGames / Platforms\e[0m"
sleep 2
sudo pacman -S steam lutris openmw --noconfirm

cd ~
mkdir Temporary
cd Temporary

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd ..
sudo snap install mapscii --noconfirm

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
sudo yay -Syu --noconfirm

cd ..
git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin
makepkg -si --skippgpcheck --noconfirm

yay -S epy-git protonvpn fluent-reader-bin librewolf-bin vscodium-bin ocs-url

echo
echo
echo -e "\e[31mNOTICE! type 'y' then press 'Enter' for the following prompts until word DONE! appears\e[0m"
cd ~
rm -r Temporary --force

echo -e "\e[32mDone!\e[0m"
sleep 2

prompt_setup
}
#//<<

#//>> Rice Plasma
function load_kde_rice {


echo -e "Installing Plasma elements"

# Plasma Customizer Saver   1298955

#OSX                        https://github.com/vinceliuice/Monterey-kde
#OSX Icons                  1405756       https://github.com/vinceliuice/WhiteSur-icon-theme

#Win11 Icons                1546069
#Win11 Theme                https://github.com/yeyushengfan258/Win11OS-kde

#Win10 Theme                https://github.com/adhec/plasmaX
#Win10 Start Menu           1160672
#Win10 Application Style    1013482
#                           1195237
#                           1591292
#                           1013580
#Win10 Window Decoration    1172409
#Win10 Icons                1353712
#                           1387736

#winxp                      1885548
#                           1479063

#win95                      1253201

echo -e "Ricing Programs"

#Yakuake
#VSCode -rust - explicit code folding - nord themes

# DELETE THESE //i could just get their codes to add above but im lazy and will do that later but i dont want to lose the links so im not deleting these lines
# Windows 11 GTK
"ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY3MTM4MzkzMiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImFkYjYyZGIzNjIzM2VlMmNmZTFiNzdmZmQ0MjMyMTk4NWM2OWVlM2ViMzU0OTBiYzhkOGE1ZGZiYjRlYTFjZjZmMjhmMjQ3ZTU3YWY1ZDY1YTg4NzA2NmFkOTk5NGNmNjgyMmI5N2IwYzQ4YzBhYjgwMDc2MGVmZTQ5ZTEwMGIwIiwidCI6MTY4NDEyMTk1OSwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.sNBMEO-HpSqLXgKDHjMhNvOowBVpZgdHYVvqEaftrTw%2FWindows-11.tar.xz&type=gtk3_themes&filename=Windows-11.tar.xz"

# Fluent GTK Dark
"ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTYwMTg1NDY1NiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImY4YmJjNTA0MTU1MzRiZmE0M2MyNWIwZGM4YzdjYzFjOTU1OTNkNmIyY2E1ODcwNzJjZDY0NjNkNjJkNDA0ZThjNDU3NWQ0MzFiNmZlNGJmZGUyODAwMWFjNmY4ZjM4ZmYzYTZiOTBiOGE4MGVjMTU3OGY2ZTJmOGJkMGM5ZGVmIiwidCI6MTY4NDEyMTY0OCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.-Llbo9LBxi-cUrUA5KJfu-XZsX2oaYEnrgHncy8wYKo%2F5.1-dark.zip&type=gtk3_themes&filename=5.1-dark.zip"

# Redstone GTK Dark
"ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY1Mjc0ODY5NCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6Ijc0YWRjMjRmMTJmYmQwNzNlNTY3ODJkYzc4M2JhMTgwNTI4MTQ0YzM2M2Q3MmI1NjAzYTg0Nzk5MDExM2M4YzNkMGM2OGYyMzYzM2UyODY5Mzk1ZTRjNzNiZDhmZWI2YTczZmRmZTM2MWY3ZWMzNjUxZTIwZjlkN2I1NTY0MTc3IiwidCI6MTY4NDEyMTc3NCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.dn4y6gf5S2OLEE0Yplziy6Sc92P-92Ls2S464MvOlbg%2F3.2.1-dark.zip&type=gtk3_themes&filename=3.2.1-dark.zip"

# Windows 10 Flat
"ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU2MTIyNjEwOSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImJlYTQwZTg4MGE3MzAwMWViYmY5Yzg4ZjkxYjlmYjAxYWI0OTBmMzZmMTQzODBiYTNiMjIyZjEwMThiMWY1ZTgzM2I1ODIxMmNiZjU4ZjRmYWQwYzg1NjM0NmYzNWM2ZDQ5OTFiYmU1NTIxMmZkMTIxMmM5NzNkYjAwNjAzYmM4IiwidCI6MTY4NDEyMTkxMCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.t-4K0GCa9P-KgTA39q2FHXSYWglrtW05-UVh2a0oOTc%2FWindows10modern-gtk-3.20-1.2.tar.gz&type=gtk3_themes&filename=Windows10modern-gtk-3.20-1.2.tar.gz"

# Windows 10 GTK
"ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU2MTIyNjE3NywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjhkMjVhNzdmYTQ3YmNjZDgxNmE1M2ViNGRiNDU3NTZlZTRiZmEyNmZlYTlhM2U5M2RiN2FlYTEwNTc0ODljZjViNDMzODdkY2RmN2YwYTc1ODBjODkzYTFiNWY1NGU2ODE3MjljOTZkZDQxMTc3NWI4YTA3YjA2NTlhNTExNzEyIiwidCI6MTY4NDEyMjAwNCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.QpAWIM-k2ZDLdVAIIu8vFpiurCDhd22ZyuMk_9RMEws%2FWindows10-gtk-3.20-1.7.tar.gz&type=gtk3_themes&filename=Windows10-gtk-3.20-1.7.tar.gz"

#---------------------------------OSX Monterey-------------------------------

yay -S plasma5-applets-window-buttons plasma5-applets-window-appmenu
sudo pacman -S kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip

# Colloid GTK Theme
"ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MzQ0MDA1MywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImZhMjEzYzQwNTc4Mjk4Mzg4MDczOThmODA4MmRhMzVkNTU1YmM3NjBjNDIwMWNiYzgzODc3ZTFkYzZmZGY0MGI4N2JjOGM1MGExZDQ3ZTk1NjZjYTJlMmE0MTQ5NjFmMGZkOGJlOThkYzBlYWI2NzEzNmE5ZDAxNTNiMDQ5YmFiIiwidCI6MTY4NDEyMjk3MSwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.3kf4urE-Msm10MVe21YxohJ-88ug5TWiOK7r2xp2wto%2FColloid.tar.xz&type=gtk3_themes&filename=Colloid.tar.xz"

# Colloid GTK Nord
"ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MzQzOTMxMiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImUyNjhmOGE4YmZiNGVhNTBmY2MyMWE3OTAwZDQ5ZjAxZmNmOTNiM2EwMGYwMDBmZmVkMzIwMzg2M2EzOThjYzE1ZDNkOGVjODhhMTgwMjZkNzRiOWNjY2VjZTYyMDFmZDQ1NGFjOWNlNDgwNjE3YzI5YjdhYTNkYThlMzE4MzRkIiwidCI6MTY4NDEyMzAxNSwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.dQ1ps1rRNmPyV14vPV9Re9cRsDnlvVd1cr3YDK3KyV0%2FColloid-Nord.tar.xz&type=gtk3_themes&filename=Colloid-Nord.tar.xz"

# Monterey Kvantum Theme
ocs-url "ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTYyNzg4OTI0OSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjZmZDA5MDZlM2Y2ZWNhMjRhYWE2ZmIwZTQ5YTA2Y2M2NjBjODVjMTc1ODQyN2JiY2I1ZjRjN2JiZTdhNTRkMzE1MGNhOTQxZDA2YWNmYzgxYWU4YWZkY2Y1YjdjZjNkNGM5ODE3ZjFkNzAwM2ViOGYzZjEwOWRiMmMwMmZkMGY4IiwidCI6MTY4NDEyMzEwMywic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.QQRqTwxwArKkajiPyC46jzdhg7OxZ4ExSiTsjeX4GNQ%2FMonterey.tar.xz&type=kvantum_themes&filename=Monterey.tar.xz"

# Forced Blur Kwin Script
ocs-url "ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY0NTEwMjI4OSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjRiNzM4MGNlZTdiNjVhZGI5NmVkM2JjZmYzNTJiNmYwY2U5OWIyNWNhZDBkMDAzNDM5YTlhN2Q1N2Q0NDZmZmViNDBmNjQ1NWMxY2Y1ZDBmNTljYTNiMDg3MTE2ZmRiMzcyZGNjMDNiMjM4MjVkMThiNWEzZjVhZDE0OGNlMTZlIiwidCI6MTY4NDEyMzIyMywic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.rsVzSMCYZIY-NivHSJvobDOsbQgjmeEJU-8tp_1j6i4%2Fforceblur-0.6.1.kwinscript&type=kwin_scripts&filename=forceblur-0.6.1.kwinscript"

# Latte Window Colors Kwin Script
ocs-url "ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU1MzMzMjAzNCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjI4ZTQ4MzI4NjhlOGVhYTk2ODJmODJlZTU2YjljMDM5OTEyMmI1ZDQ2OTRhNDNmMzk0NDEyOTAxMTMwNmE2ZmNmZDhmZDA0NzM2Y2JjYjNmMzE3N2NlYTg5ZDkxYTg1MzBlY2NiYmVkMDk2ZmNlYjUyNjNiYTU2YTc5NjY0ZjI5IiwidCI6MTY4NDEyMzMwNCwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.A2MoIw_-tRiGykzz403GvgfCX02WWRBWHPWBNDbEH1E%2Fwindow-colors-0.2.kwinscript&type=kwin_scripts&filename=window-colors-0.2.kwinscript"

# Latte Active Launcher Kwin Script
ocs-url "ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTUyMDY4Njc3MywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImY1NjQxZDJkOWRjNWZjYWJmNTRmOGFhYzY2OGUyZTAxZTliMWNlZjJjNmNmM2YzZWRmYmRjZDU3YzFkN2ZkNzg0NGVlZWRhZWYxMTYzYWNiYjYzMzU4ZGIyMzg3NzQyODVmZTIxMjhmNTFlMTliZjczNjc2NmFkNmUwZjhhNzg0IiwidCI6MTY4NDEyMzM1MCwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.TMtIZSVDZPds-0Tr3nVZPAnwFjk4WUApoUcot3A6FXs%2Fkwin_script_activatelattelaunchermenu.kwinscript&type=kwin_scripts&filename=kwin_script_activatelattelaunchermenu.kwinscript"

prompt_setup

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
# alias desktop="sudo systemctl start sddm"
# alias omnispace="cd ~/Downloads/ && ./OmniSpace_OS.sh"
# alias logout="qdbus org.kde.ksmserver /KSMServer logout 0 3 3"
# alias uninstall="sudo pacman -Rns"
# alias install="sudo pacman -S"
# alias update="sudo pacman -Syu"


#Edit /etc/issue to display ascii_name

#        ________________________________________________________________________________________
#       / \e[36m_____            __      _____    ____    _____    _____   ____     _____   _____     \e[0m/
#      / \e[36m/ ___/\\ __  __   / /\\_   / ___/\\  /   /\\  / ___/\\  /    /\\ /    \\   / ___/\\ / ___/\\   \e[0m/
#     / \e[36m/ /___\\// /\\/ /\\ /    /\\ / __/_\\/ / _ \\ /  __\\ \\ / / ___/ //  _  /\\ / /__ \\// __/_\\/  \e[0m/
#    / \e[36m/_____/\\ \\__  / //____/ //_____/\\ /_/ \\_\\ \\\\____/\\ /_/\\__\\//_/ /_/ //____/\\ /_____/\\  \e[0m/
#   /  \e[36m\\_____\\/   /_/ / \\____\\/ \\_____\\/ \\_\\/ \\_\\/ \\___\\/ \\_\\/    \\_\\/\\_\\/ \\____\\/ \\_____\\/ \e[0m/
#  /______________\e[36m\\_\\/\e[0m_____________________________________________________________________/


}
#//<<

#//>> Rice Awesome
function rice_awesome {

echo -e "\e[32mNOT FINISHED! DID NOTHING. Now how will i get on Unixporn\e[0m"
sleep 2

}
#//<<



#----Custom Stuff to make----

# Grub Screen https://nx2.site/grub-ascii-theme
# KDE Recreations
# Ascii animations and game for installer w/ options and perameters


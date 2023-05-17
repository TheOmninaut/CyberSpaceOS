#!/bin/bash

#------Omninaut Presents------
#       Arch Setup/Ricer

ascii_name="
       ________________________________________________________________________________________
      / \e[36m_____            __      _____    ____    _____    _____   ____     _____   _____     \e[0m/
     / \e[36m/ ___/\\ __  __   / /\\_   / ___/\\  /   /\\  / ___/\\  /    /\\ /    \\   / ___/\\ / ___/\\   \e[0m/
    / \e[36m/ /___\\// /\\/ /\\ /    /\\ / __/_\\/ / _ \\ /  __\\ \\ / / ___/ //  _  /\\ / /__ \\// __/_\\/  \e[0m/
   / \e[36m/_____/\\ \\__  / //____/ //_____/\\ /_/ \\_\\ \\\\____/\\ /_/\\__\\//_/ /_/ //____/\\ /_____/\\  \e[0m/
  /  \e[36m\\_____\\/   /_/ / \\____\\/ \\_____\\/ \\_\\/ \\_\\/ \\___\\/ \\_\\/    \\_\\/\\_\\/ \\____\\/ \\_____\\/ \e[0m/
 /______________\e[36m\\_\\/\e[0m_____________________________________________________________________/
 "

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
echo -e ascii_name
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

load_kde_rice
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
pacman -S archlinux-keyring
sudo pacman -Syyuu
sudo pacman -S awesome grub-customizer
sudo systemctl set-default multi-user.target

echo -e "\e[31mInstalling Terminal Programs\e[0m"
sleep 2
sudo pacman -S fbset tmux cmus w3m ranger htop feh neofetch neovim git pkgfile man timeshift

echo -e "\e[31mInstalling Desktop Programs\e[0m"
sleep 2
sudo pacman -S yakuake steam blender vlc calibre elisa kiwix-desktop lutris audacity discord qbittorrent kdenlive flameshot

echo -e "\e[31mDependencies for KDE Ricing\e[0m"
sleep 2
sudo pacman -S qt5-base qt5-svg qt5-declarative qt5-quickcontrols

cd ~
mkdir Temporary
cd Temporary

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd ..
sudo snap install mapscii

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..
git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin
makepkg -si --skippgpcheck

yay -S epy-git protonvpn fluent-reader librewolf-bin vscodium-bin ocs-url
yay -Syyuu --devel

echo
echo
echo -e "\e[31mNOTICE! type 'y' then press 'Enter' for the following prompts until word DONE! appears\e[0m"
cd ~
rm -r Temporary

echo -e "\e[32mDone!\e[0m"
sleep 2

prompt_setup
}
#//<<

#//>> Rice Plasma
function load_kde_rice {

echo -e "Installing Plasma elements"

# Utterly Nord Global Theme
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4NDA1Mjk1MiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6Ijc3NjMzYTg0NDI3N2NhOTAxODQ1MGIzMDMwYzljMzc0ZGU0YTRlNmFiZDYxOGFiYjI1OWY1MjllNTAwYjg1OTljZTYwZDkzOTRiMTk4Njk4YWRmYjQ2MjNlNWJjODQ0NDJiM2M5NDYxNjhmMjc5YjRkYmNlNWQ3MTk1MmJlZDVhIiwidCI6MTY4NDA5MTQzNSwic3RmcCI6IjRmZGZiNjQ5ZGMxMjE4Y2MzMzBkOTk2ZWMwNTdmZjQ0Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.myGAfbWrk8IhbzitPKsOExopePDZIJW8gp-UBSycVDY%2FUtterly-Nord.tar.xz&type=plasma_look_and_feel&filename=Utterly-Nord.tar.xz

# Plasma Customizer Saver
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY0NDY2MTIyNiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImRhN2ZkODc2ZjBkNTFjMGY2ZWE1NDU1YTRmNzdlM2RjYzlmYTVkYzkyZmU5YWY3YzViZTYwZmViNWE5NGVlOTYzNWFmMDEzMmM1YjJiMzFlYzg3NDI0Y2FjZjYwYjkzMzE1NzYyNTA5NmM2MWNiODJhYzMyN2Y5N2U2NmY1MTE3IiwidCI6MTY4NDEyNDEzOSwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.TSipbQ1NUpCQWg_vhLApCFMLq9zL3GVFrrkPEJNuuUo%2Fcom.pajuelo.plasmaConfSaver-1.6.tar.gz&type=plasma5_plasmoids&filename=com.pajuelo.plasmaConfSaver-1.6.tar.gz

#--------------------------------Windows 95----------------------------------

#Reactionary Theme
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY3MjA4NTY5NSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjE5MmJiNTAzODg0YzI3ODcxZDI4MzJmYTNmNDJiMjc2ZmIwZDg3MjliMWQ2YmM1MjRhYzdjNWYzZjViNjA5NzYzMzVlZTE1YjY4MzA0NTI5OGE1NDI5NTE5ZDYxOWU5ZmJlMDA2ZTc5N2I3NzNlNzc4ZWZhZTNlNGEzYTdkZTgxIiwidCI6MTY4NDEyMzc0OSwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.F8Q16rzZTu3-8de5VW6MUIu5Fj89lnZm5K4hpZs-hus%2Freactionary-global-4.0.tar.bz2&type=plasma_look_and_feel&filename=reactionary-global-4.0.tar.bz2

# Win95 Icons
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTUwMDc2OTI5NiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImY5NTFlNzQ3MDEwZTkwZTFmYWJjZGFjODMwZmNiOTRiNzE0ZmEwZDgyOWI1OWE1NmFhYjNlMzU2NDc3MmYwNzQwMGM2MDExODc3MDdjOTA4ZmFlMTBmMDdmMjU2YTYwYzliOWE2NmE0YmY4NjBmMjQ0ZjcyYzIyM2MxY2RkZjM1IiwidCI6MTY4NDEyNDAxNiwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.8zkxF2iC9EB73HZRO_RsMm4fLQKxCRQbtl34-kFTmI0%2FWindows95.tar.gz&type=gtk3_themes&filename=Windows95.tar.gz

#--------------------------------Windows 11----------------------------------

# Win11 Dark Theme
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTYyNjAzMjMxNSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjU2MmU1NTg3OGNjZjRmMmE4YTNmYjEyYmViNWI0ODkyZmNiZDhjNmViZWYyNjljYmM5M2I0MmFlOTIyNzAwNmI2ZWRkYWNlZWZhNjQyZjViNTUxYWE5YjI0OTdjMTg2YjdlMTFjNWQzN2RiYWU2ODUxN2ZmNDI2YzY1YzIyMjhjIiwidCI6MTY4NDEyMDYxNSwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.6iHn3s3Kld_w5sw_j23qkGzZQmbzDJMufg47j5pI0B4%2Fcom.github.yeyushengfan258.Win11OS-dark.zip&type=plasma_look_and_feel&filename=com.github.yeyushengfan258.Win11OS-dark.zip

# Win11 Light Theme
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTYyNzk3MDIxMSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjYyYzk1MDUxMjU4Yjc3ZDczODBhYTQ2MzQ0NzljNDMwNGQyODBlNGQxMDk1YjI2OTFiMWU1NTgzYjg1NmQ4NGU4Zjk4ZGMwZTVkZjI5Mzk0M2RmOGMyNzVjNDExMTUwNjM0OGE2ZGQxZmZlYWEyNDNmMjM5ODlhZmUwNjM4YTVhIiwidCI6MTY4NDEyMTMxNSwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.MgU8zG9hOUa9CsjtUo9Kni9vr_GVUpqzg-wNL2Wb34Y%2Fcom.github.yeyushengfan258.Win11OS-light.zip&type=plasma_look_and_feel&filename=com.github.yeyushengfan258.Win11OS-light.zip

# Windows 11 GTK
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY3MTM4MzkzMiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImFkYjYyZGIzNjIzM2VlMmNmZTFiNzdmZmQ0MjMyMTk4NWM2OWVlM2ViMzU0OTBiYzhkOGE1ZGZiYjRlYTFjZjZmMjhmMjQ3ZTU3YWY1ZDY1YTg4NzA2NmFkOTk5NGNmNjgyMmI5N2IwYzQ4YzBhYjgwMDc2MGVmZTQ5ZTEwMGIwIiwidCI6MTY4NDEyMTk1OSwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.sNBMEO-HpSqLXgKDHjMhNvOowBVpZgdHYVvqEaftrTw%2FWindows-11.tar.xz&type=gtk3_themes&filename=Windows-11.tar.xz

# Windows 11 Icons Normal
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4Mzc1NDM0MywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImRjNTc3MmNlOGFhYzI2NDFhMzY3OGM0Y2UxZDYwZjdkNzYwNGU1NGY2ZTQ2YzY1YTRmMDcyYTI3YzcyMmI1ZGI4ZTI0ZDFiNDQyYTliYzQ2YTBmYmFhY2FmYmI5ZDBkN2Y3MDhmY2QwOGYxYzU1ZjQxNzdlMjZjMDExZDdmZTJlIiwidCI6MTY4NDEyMjQwOSwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.FY-IynuSee70eyYlroJzdHkavy-r6zl4SaOCNvdqSqk%2FWin11.tar.xz&type=icons&filename=Win11.tar.xz

# Windows 11 Icons Black
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4Mzc1NTA4NCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjFkOGQxN2JjZDNiYzM5N2MzOTkwYzQxODIyYTQxNzdlZDkzNzFjOTcwNjgyMjA5NGNlZjJhOTdjNWFlNmQ4YWRiYTU2N2E5NzYzZDRlZjA1YjI0YTQxY2EyZDdkZTFhOWQ0MWQ3YjQxODJmMjRiMjA4NzkwN2QzYTgzZTc3Nzc1IiwidCI6MTY4NDEyMjQ0Niwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.RZF5yYA666nYpRBdkI2BH8aMwxRkUBcDCQSwfrylWsI%2FWin11-black.tar.xz&type=icons&filename=Win11-black.tar.xz

# Windows 11 Icons NORD
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4Mzc1NTc2OSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImY4MzE5ZjhkZTA1MmRmNDA4MmIxMzliNmY5NmQzNzYxZmU3MjdmMzg0MjI4ZDYwMDljZDYxZjZlODg0NzU0NzJlODkzMDAxMWY5MDdlZjg1NzRkOTJmOTY5ZjMyY2VkNzI4NWZmN2I5MmUzODM0NDVkZWYxNjY2YTdiNzEyZjNjIiwidCI6MTY4NDEyMjM3Mywic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.b4ofDlWwsrkW9aZ1N_BrcwnCOqJo0Frjyy9JKDG6yyQ%2FWin11-nord.tar.xz&type=icons&filename=Win11-nord.tar.xz


#-------------------------------Windows 10-------------------------------------

# Windows 10 Dark Theme
ocs ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU4NDg0OTk3NiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6Ijg5NGIzYmY4NTgyYjdiZWI2OTVjNjM2NTY2ZDJkY2MyNzk1YzBiY2U0YmU5MWRmNjhjZWRlYjY2MWVhYzdiYWM2YTE1NTcyOTQ3MDFmZDUwMDUyNGUyNjVlM2ZjZjJiZjI4MjY4YzQ2OGQ2ZDFiNjU5ZTNjNzY3NTE2MjRiNWEwIiwidCI6MTY4NDEyMTM2Nywic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.pV1__71NaRGBbuFqlWI-kvkMQ2Buh_cNGR8sR5goT8g%2FPlasmaXDark.tar.gz&type=plasma_look_and_feel&filename=PlasmaXDark.tar.gz

# Windows 10 Light Theme
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU4NDg0OTk0NiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjczYjRhYjAxYzQxZGYxOTZiYjExYjBhYmZmZTk5ODYzNzdhZGIyOTY2OTczYmEyMjk5OWM2N2I4YmI2ZjNkNWIzOTVkOGEwOWYxYjEzN2QwZWQxOWY5NGE5ZjhiYWE5NTk5N2YzMjA1MmY5MGY4YjZjYmI2Njc1MzhlMDIzNzE5IiwidCI6MTY4NDEyMTQzNiwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.tUdNaKkJS71TdFlb2chvPVq3tB7DYB96q8n_jpt3HLQ%2FPlasmaXLight.tar.gz&type=plasma_look_and_feel&filename=PlasmaXLight.tar.gz

# Fluent GTK Dark
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTYwMTg1NDY1NiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImY4YmJjNTA0MTU1MzRiZmE0M2MyNWIwZGM4YzdjYzFjOTU1OTNkNmIyY2E1ODcwNzJjZDY0NjNkNjJkNDA0ZThjNDU3NWQ0MzFiNmZlNGJmZGUyODAwMWFjNmY4ZjM4ZmYzYTZiOTBiOGE4MGVjMTU3OGY2ZTJmOGJkMGM5ZGVmIiwidCI6MTY4NDEyMTY0OCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.-Llbo9LBxi-cUrUA5KJfu-XZsX2oaYEnrgHncy8wYKo%2F5.1-dark.zip&type=gtk3_themes&filename=5.1-dark.zip

# Fluent GTK Light
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTYwMTg1NTMxNSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImJjZGQ4NTkxYzFhYzFiNDNmYjVhMzdhNmQ2MDg4MjRkYTcwNDc3NTBkMTBjNWM5N2Y4Y2FlNzYyZTNkMzI2NWQxNDI3NGExZDBjOWU3Njc0ZTI2NmE2ZWE2NTNiYzA0ZjQ2NzAyYTQ4MTk2OWExYmI2ZmI1MGZlMDZiNzY1OGNkIiwidCI6MTY4NDEyMTY4Mywic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.l9vhDK_sHQ5KLBrRvBxEKdL6FwvxGO6WbgdRUJ8IFuc%2F5.1.zip&type=gtk3_themes&filename=5.1.zip

# Redstone GTK Dark
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY1Mjc0ODY5NCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6Ijc0YWRjMjRmMTJmYmQwNzNlNTY3ODJkYzc4M2JhMTgwNTI4MTQ0YzM2M2Q3MmI1NjAzYTg0Nzk5MDExM2M4YzNkMGM2OGYyMzYzM2UyODY5Mzk1ZTRjNzNiZDhmZWI2YTczZmRmZTM2MWY3ZWMzNjUxZTIwZjlkN2I1NTY0MTc3IiwidCI6MTY4NDEyMTc3NCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.dn4y6gf5S2OLEE0Yplziy6Sc92P-92Ls2S464MvOlbg%2F3.2.1-dark.zip&type=gtk3_themes&filename=3.2.1-dark.zip

# Redstone GTK Light
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY1Mjc0OTAzMiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjZjNTM0NWQ5ZjJlZDI2YTJkNDYzZDllZTFiMWZmYzExODJhZmE4Mzk2NTc0MzllODM3NzM0MjcxODhlYzM5MzliMzBiMmFlMzlkMmVlODRhNDdiNTQzYjdlNTAxNDY1Y2JjYWZlNjQ0M2IyNmZiMzQxZTVmM2MzMzg0MDI2YzE1IiwidCI6MTY4NDEyMTgxMiwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.K9ZfaBLizS2sBC1lo31f1TeZCCym-OkpaZt-3MfYAbY%2F3.2.1.zip&type=gtk3_themes&filename=3.2.1.zip

# Windows 10 Flat
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU2MTIyNjEwOSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImJlYTQwZTg4MGE3MzAwMWViYmY5Yzg4ZjkxYjlmYjAxYWI0OTBmMzZmMTQzODBiYTNiMjIyZjEwMThiMWY1ZTgzM2I1ODIxMmNiZjU4ZjRmYWQwYzg1NjM0NmYzNWM2ZDQ5OTFiYmU1NTIxMmZkMTIxMmM5NzNkYjAwNjAzYmM4IiwidCI6MTY4NDEyMTkxMCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.t-4K0GCa9P-KgTA39q2FHXSYWglrtW05-UVh2a0oOTc%2FWindows10modern-gtk-3.20-1.2.tar.gz&type=gtk3_themes&filename=Windows10modern-gtk-3.20-1.2.tar.gz

# Windows 10 GTK
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU2MTIyNjE3NywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjhkMjVhNzdmYTQ3YmNjZDgxNmE1M2ViNGRiNDU3NTZlZTRiZmEyNmZlYTlhM2U5M2RiN2FlYTEwNTc0ODljZjViNDMzODdkY2RmN2YwYTc1ODBjODkzYTFiNWY1NGU2ODE3MjljOTZkZDQxMTc3NWI4YTA3YjA2NTlhNTExNzEyIiwidCI6MTY4NDEyMjAwNCwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.QpAWIM-k2ZDLdVAIIu8vFpiurCDhd22ZyuMk_9RMEws%2FWindows10-gtk-3.20-1.7.tar.gz&type=gtk3_themes&filename=Windows10-gtk-3.20-1.7.tar.gz

# Windows 10 Window Decoration
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU1OTU3MjI5NiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjQyYjA5MWQwMWYwZDdlZGI3MzU5ZTlmZTcxNmZmNjFmMTE1YjBiMzlmMWU4ZmNhYWZlNDYxZjYwOTdiZGE5M2UwODU0YTkyMDIwZWEyODIxY2JiYTllMjE4YjA5NGUxOTFmYTAxOWQ4OTIzYmFiODE4NDJlODlhMDllYWQ0OWE2IiwidCI6MTY4NDEyMjA5OSwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.dh3YnMGMZ2gQoKY0kiPJWIaD_O5VhDSp-UWRnmC3qvk%2FWindowsK10%280.6.2%29.tar.gz&type=aurorae_themes&filename=WindowsK10(0.6.2).tar.gz

# Windows 10 Icons
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU3OTY0MjUzMCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjViYjJlZWJhOWM1YzU4YzZiYjY4NjZiZjVjOTM1NjQ2NzgzNjNlMGMzOGNlODUyM2I2MjhmOTBkY2JkZDRmNjA3MWE0N2Y4NDEzNzc1ZTFmOTFiNzI4NGQwNzZiOWVmOTk1YzdhZGUzYjkwNWIwMjlhODRiYzE1MDY1ZDUwMTlkIiwidCI6MTY4NDEyMjUwMSwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.8Lq-aKyXDfJI3MdbUGgW7eAQYMRtnlKaTlN0Gyv637Y%2F1.0.zip&type=icons&filename=1.0.zip

# Windows 10 Tiled Menu

#---------------------------------OSX Monterey-------------------------------

yay -S plasma5-applets-window-buttons plasma5-applets-window-appmenu
sudo pacman -S kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip

# Monterey Dark
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MzU2MjQxMywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImRjZDg2OWU3Nzc5NzViZDMwNjAxODE2NmVlMTllMGQ1YjlkNDNhMmRjNjljMzY2NDMzNjY0MmJlM2Q2NDUzODhmNDMzOWIxZmEzYjRhNzQyMjlmY2U1MTU2NDhjOTUwZWIxYjQwZGZiMTcyNjMyM2QyOGNmOTVhZTQ1ODhiOTNiIiwidCI6MTY4NDA5MjAwMiwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.OFjU2EKSf1bekoUON9YSe8sZoSU1OA5O56MupRboWsg%2FMonterey-dark.tar.gz&type=plasma5_desktopthemes&filename=Monterey-dark.tar.gz

# Monterey Light
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MzU2MjkwNCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjQ0NDdjM2VjYTk2MDdiOWMzOTRhN2U5ODU1OGFlN2M4ZTdlYzI1MWNkMmQ4M2ZiYzBhYjY4Y2FlNDc4MGEwMjI1Y2E1MmIzOGQ0OTM2NTkxYTBkYTdkYjQ0YjU4YTAwM2ZmNmQ4NGYwZDc3YTVkNzMzYTU4MmYwNDVjMGY2NmEyIiwidCI6MTY4NDA5MjA4Niwic3RmcCI6ImJiMWMyYzlmOTI3Y2UzNmIxZDMzOTM3MmFhOTFhNGJkIiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.XzsxdR_02wxOO98xjlHw0Iu2KL4lli-yYG2K7AJACIQ%2FMonterey.tar.gz&type=plasma5_desktopthemes&filename=Monterey.tar.gz

# WhiteSur Icon
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MjY5Njc3NCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6Ijc4YmVkNzNiODlkNDk4YTc3NmMyZTljZTVmMWM2MGZlYTA1ODIwNzBiN2QwNjA2NTI1YzBkYjY5ZTJjNWFiZTEzNTg1MTc5YTVjNTkxOGIwMmM1MzUxOWY2ZTJjODUzNDgwZWUwZTM4NWQxYjViZjQwMDQzODU3MDMyMGMwMjcyIiwidCI6MTY4NDA5MjQxNSwic3RmcCI6bnVsbCwic3RpcCI6bnVsbH0.RftD-1wf4JGRUDEaBzCqctuAQK539rmP4Vp1vPuoWfU%2F01-WhiteSur.tar.xz&type=icons&filename=01-WhiteSur.tar.xz

# WhiteSur Grey Icons
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MjY5NjU1NCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjViMGE3NmE5M2IzZDBkYzkxOTQwZjhjOWMzMmNhMjI3ZDQyOGM1YmQ1NzdkNGQ2MTdjMDRmMTUwZDk1NTBmMjRlN2RmNmJmMTkxZDA3Y2M1MTMyYTAzNTgwOTQzNDQxOTYwZDVhMTZjYzlhYjFkMjhlZTExZjdhOWZkZGY0Y2IzIiwidCI6MTY4NDA5MjQ5Mywic3RmcCI6bnVsbCwic3RpcCI6bnVsbH0.kQRP2R62vGWpPkLKgOvYgHt3oZWi2mfHEZi-DCjtgeE%2FWhiteSur-grey.tar.xz&type=icons&filename=WhiteSur-grey.tar.xz

# WhiteSur Nord Icons
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MjY5NjU3MywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjM1Y2M0NTZjZmM2YTIyNGJkMjhjYTYwYWEyM2YyYTEwMWE4YjYzMDY0MTkxMWI5NzE1NWJiYjlmYjBiMTcxY2Q0YmI4NzZmYjliZGI2MjQ3ZjMwZThhZWI5MjA2NDEyYjBkMWJjZjhjY2FlZThmZDI3ZjM1YjFiYTI1Mjc0ZjgwIiwidCI6MTY4NDA5MjUxOSwic3RmcCI6bnVsbCwic3RpcCI6bnVsbH0.SlJVY8G15QLKKJlIME7wtxVkBHKLCu3JkfaDTptYmW8%2FWhiteSur-nord.tar.xz&type=icons&filename=WhiteSur-nord.tar.xz

# Colloid GTK Theme
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MzQ0MDA1MywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImZhMjEzYzQwNTc4Mjk4Mzg4MDczOThmODA4MmRhMzVkNTU1YmM3NjBjNDIwMWNiYzgzODc3ZTFkYzZmZGY0MGI4N2JjOGM1MGExZDQ3ZTk1NjZjYTJlMmE0MTQ5NjFmMGZkOGJlOThkYzBlYWI2NzEzNmE5ZDAxNTNiMDQ5YmFiIiwidCI6MTY4NDEyMjk3MSwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.3kf4urE-Msm10MVe21YxohJ-88ug5TWiOK7r2xp2wto%2FColloid.tar.xz&type=gtk3_themes&filename=Colloid.tar.xz

# Colloid GTK Nord
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY4MzQzOTMxMiwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImUyNjhmOGE4YmZiNGVhNTBmY2MyMWE3OTAwZDQ5ZjAxZmNmOTNiM2EwMGYwMDBmZmVkMzIwMzg2M2EzOThjYzE1ZDNkOGVjODhhMTgwMjZkNzRiOWNjY2VjZTYyMDFmZDQ1NGFjOWNlNDgwNjE3YzI5YjdhYTNkYThlMzE4MzRkIiwidCI6MTY4NDEyMzAxNSwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.dQ1ps1rRNmPyV14vPV9Re9cRsDnlvVd1cr3YDK3KyV0%2FColloid-Nord.tar.xz&type=gtk3_themes&filename=Colloid-Nord.tar.xz

# Monterey Kvantum Theme
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTYyNzg4OTI0OSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjZmZDA5MDZlM2Y2ZWNhMjRhYWE2ZmIwZTQ5YTA2Y2M2NjBjODVjMTc1ODQyN2JiY2I1ZjRjN2JiZTdhNTRkMzE1MGNhOTQxZDA2YWNmYzgxYWU4YWZkY2Y1YjdjZjNkNGM5ODE3ZjFkNzAwM2ViOGYzZjEwOWRiMmMwMmZkMGY4IiwidCI6MTY4NDEyMzEwMywic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.QQRqTwxwArKkajiPyC46jzdhg7OxZ4ExSiTsjeX4GNQ%2FMonterey.tar.xz&type=kvantum_themes&filename=Monterey.tar.xz

# Forced Blur Kwin Script
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY0NTEwMjI4OSwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjRiNzM4MGNlZTdiNjVhZGI5NmVkM2JjZmYzNTJiNmYwY2U5OWIyNWNhZDBkMDAzNDM5YTlhN2Q1N2Q0NDZmZmViNDBmNjQ1NWMxY2Y1ZDBmNTljYTNiMDg3MTE2ZmRiMzcyZGNjMDNiMjM4MjVkMThiNWEzZjVhZDE0OGNlMTZlIiwidCI6MTY4NDEyMzIyMywic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.rsVzSMCYZIY-NivHSJvobDOsbQgjmeEJU-8tp_1j6i4%2Fforceblur-0.6.1.kwinscript&type=kwin_scripts&filename=forceblur-0.6.1.kwinscript

# Latte Window Colors Kwin Script
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTU1MzMzMjAzNCwidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6IjI4ZTQ4MzI4NjhlOGVhYTk2ODJmODJlZTU2YjljMDM5OTEyMmI1ZDQ2OTRhNDNmMzk0NDEyOTAxMTMwNmE2ZmNmZDhmZDA0NzM2Y2JjYjNmMzE3N2NlYTg5ZDkxYTg1MzBlY2NiYmVkMDk2ZmNlYjUyNjNiYTU2YTc5NjY0ZjI5IiwidCI6MTY4NDEyMzMwNCwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.A2MoIw_-tRiGykzz403GvgfCX02WWRBWHPWBNDbEH1E%2Fwindow-colors-0.2.kwinscript&type=kwin_scripts&filename=window-colors-0.2.kwinscript

# Latte Active Launcher Kwin Script
ocs-url ocs://install?url=https%3A%2F%2Ffiles03.pling.com%2Fapi%2Ffiles%2Fdownload%2Fj%2FeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTUyMDY4Njc3MywidSI6bnVsbCwibHQiOiJpbnN0YWxsIiwicyI6ImY1NjQxZDJkOWRjNWZjYWJmNTRmOGFhYzY2OGUyZTAxZTliMWNlZjJjNmNmM2YzZWRmYmRjZDU3YzFkN2ZkNzg0NGVlZWRhZWYxMTYzYWNiYjYzMzU4ZGIyMzg3NzQyODVmZTIxMjhmNTFlMTliZjczNjc2NmFkNmUwZjhhNzg0IiwidCI6MTY4NDEyMzM1MCwic3RmcCI6ImQ3ODRlYmExNzBiNzc0MTczZWI2ODViMWU4ZWY2MWI2Iiwic3RpcCI6Ijc2LjE3MS4xNzEuMjQwIn0.TMtIZSVDZPds-0Tr3nVZPAnwFjk4WUApoUcot3A6FXs%2Fkwin_script_activatelattelaunchermenu.kwinscript&type=kwin_scripts&filename=kwin_script_activatelattelaunchermenu.kwinscript

prompt_setup

}
#//<<

#//>> Rice Terminal
function rice_terminal {

echo -e "\e[32mNOT FINISHED! DID NOTHING. Terminal Still Lame\e[0m"
sleep 2

}
#//<<

#//>> Rice Awesome
function rice_awesome {

echo -e "\e[32mNOT FINISHED! DID NOTHING. Now how will i get on Unixporn\e[0m"
sleep 2

}
#//<<
#
# ~/.bashrc
#

# if not running interactively, dont do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'

#  white before vv       cyan vv   user    blue vv   dir    cyan vv   > [space] white after
PS1='\[\033[1;37m\]\[\033[1;36m\][\u]\[\033[1;34m\] \w\[\033[1;36m\]> \[\033[1;37m\]'

# Custom bash commands
alias desktop="sudo systemctl start sddm"
alias omnispace="cd ~/Downloads/ && ./OmniSpace_OS.sh"
alias logout="qdbus org.kde.ksmserver /KSMServer logout 0 3 3"
alias uninstall="sudo pacman -Rns"
alias install-"sudo pacman -S"
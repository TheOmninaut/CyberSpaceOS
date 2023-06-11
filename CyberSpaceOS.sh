#!/bin/bash

#------Omninaut Presents------
#        CyberSpace OS
#0.10

#//>> Prescript / Installing Arch

# https://mirrors.mit.edu/archlinux/iso/
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
    # use GRUB bootloader
    # Choose KDE Plama
# cd Downloads
# git clone https://github.com/theomninaut/CyberSpaceOS
# cd CyberSpaceOS
# chmod +x CyberSpaceOS.sh
# ./CyberSpaceOS.sh

#//<<


#//>> Script Interface & Function

    #//>> Initialize Variables

# Colors
CYANT="\\e[36m"
CYANLT="\\e[96m"
CYANH="\\e[46m\\e[30m"
REDT="\\e[31m"
#reset color. for use:: printf "${COLOR}TEXT_TO_PRINT${RC}"
RC="\\e[49m\\e[0m"

# Menu Function Variables
BEGIN=$(date +%s)
sub_menu=0
cur_position=0
menu_options=1
debugdelete=0

# Menu Options
menu_main_op1="Install Things"
menu_main_op2="Rice Enviornments"

menu_inst_op1="Install Everything"
menu_inst_op2="Essentials & Initializing"
menu_inst_op3="Programming Development"
menu_inst_op4="Terminal Programs"
menu_inst_op5="Awesome Programs"
menu_inst_op6="Desktop Programs"
menu_inst_op7="Game Platforms"
menu_inst_op8="Virtual Machines"

menu_rice_op1="Terminal Rice"
menu_rice_op2="Plasma Rice"

menu_desk_op1="All Desktop Applications"
menu_desk_op2="Basics"
menu_desk_op3="Media"
menu_desk_op4="Creator"
menu_desk_op5="Plasma 5 Rice Dependencies"

#Center Space "prefix"
clear
columns=$(tput cols)
#78 width without "OS", 85 with it. Middle ground is 82
banner_width=82
indent=$(( (columns - banner_width) / 2 ))
prefix=''
for ((i=1; i<=indent; i++)) ; do
    prefix+=' '
done

#ASCII Headers
CYBERSPACE_MAINHEADER="${prefix}    ─────────────────────────────────────────────────────────────────────────\\n${prefix}    ${CYANT}_____          __     _____   ____   _____   _____  ____    _____  _____${RC}\\n${prefix}   ${CYANT}/ ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \\  / ___/ / ___/${RC}\\n${prefix}  ${CYANT}/ /___ / /_/ / /    / / __/_  / _ \\   __\\ \\  / ___/ /  _  / / /__  / __/_${RC}  █▀█ ▄▀▀\\n${prefix} ${CYANT}/_____/ \\__  / /____/ /_____/ /_/ \\_\\ \\____/ /_/    /_/ /_/ /____/ /_____/${RC}  █▄█ ▄██\\n${prefix}───────────${CYANT}/ /${RC}───────────────────────────────────────────────────────────────\\n"

#//<<

    #//>> Startup Ascii Animation
function play_centered_anim {

clear

echo -e "${prefix}    ─────────────────────────────────────────────────────────────────────────"
echo -e "${prefix}                                                                            "
echo -e "${prefix}                                                                             "
echo -e "${prefix}                                                                            "
echo -e "${prefix}                                                                          "
echo -e "${prefix}──────────────────────────────────────────────────────────────────────────"
sleep .1
clear

echo -e "${prefix}    ─┬──────────────────────────•────────────────────────────────────────────"
echo -e "${prefix}     └                         ─┘                         "
echo -e "${prefix}                                                      "
echo -e "${prefix}                                                    "
echo -e "${prefix}                                             "
echo -e "${prefix}──────────────────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────────────────────────────────────────────"
echo -e "${prefix}     └┐             └        ┌──┘                         "
echo -e "${prefix}      └                                                "
echo -e "${prefix}                                                    "
echo -e "${prefix} ┌                                            "
echo -e "${prefix}─┘────────────────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────────────────────────────────────────────"
echo -e "${prefix}     └┐             └──      ┌──┘                         "
echo -e "${prefix}      └•──                  ─┘                          "
echo -e "${prefix}                                                    "
echo -e "${prefix} ┌──                                            "
echo -e "${prefix}─┘────────────────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────────────────────────────────────────────"
echo -e "${prefix}     └┐             └────    ┌──┘                         "
echo -e "${prefix}      └•────              ───┘                          "
echo -e "${prefix}  ┌─                                                  "
echo -e "${prefix} ┌┴───                                            "
echo -e "${prefix}─┘───────────┴────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────────────────────────────────────────────"
echo -e "${prefix}     └┐             ├────┐   ┌──┘                         "
echo -e "${prefix}      └•────┴─      └    o─┬─┘                          "
echo -e "${prefix}  ┌─o        ┌             └                           "
echo -e "${prefix} ┌┴───•─     │                                      "
echo -e "${prefix}─┘───────────┴────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────────────────────────────────────────────"
echo -e "${prefix}     └┐     ┌─      ├────┐   ┌──┘                         "
echo -e "${prefix}      └•────┴───    └──  o─┬─┘                          "
echo -e "${prefix}  ┌─o        ┌•            └──                           "
echo -e "${prefix} ┌┴───•──┘   │                                      "
echo -e "${prefix}─┘───────────┴────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────────────────────────────────────────────"
echo -e "${prefix}     └┐     ┌───    ├────┐   ┌──┘                         "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘                          "
echo -e "${prefix}  ┌─o    ┌─  ┌• └      │   └───┘                           "
echo -e "${prefix} ┌┴───•──┘   │                                      "
echo -e "${prefix}─┘───────────┴──────────────────────────┴─────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────────────────────────────────────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘                         "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌─                         "
echo -e "${prefix}  ┌─o    ┌─• ┌• └──    │   └───┘        ┌                   "
echo -e "${prefix} ┌┴───•──┘   │         └•               │              "
echo -e "${prefix}─┘───────────┴──────────────────────────┴────┴────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬──────────────────┬────────────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘                         "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───                         "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─   │   └──┬┘        ┌─┘                   "
echo -e "${prefix} ┌┴───•──┘   │    •    └•     ┘         │    ┌─          "
echo -e "${prefix}─┘───────────┴──────────────────────────┴────┴────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────────────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └─       └         └─     "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─     ┌─                    "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘                   "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘         │    ┌───          "
echo -e "${prefix}─┘───────────┴──────────────────────────┴────┴────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────────────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐     └──       └─┐     "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•    ┌┴──            │        "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘                   "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    │    ┌─────          "
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────────────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └────     └─┐     "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴──            │        "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘      ┌        └─     "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    │    ┌───┴─o          "
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────────────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──────   └─┐     "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐          │        "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘      ┌──      └───     "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o          "
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────────────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐     "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐          │        "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────    └───┐     "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o          │"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐     "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o─     "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤     "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o     ─┘   ├──"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─   "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬     "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤     "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├────"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └   "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├──────"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────────"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌─ "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   "
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌─── "
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌"
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─"
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     "
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──"
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}     └┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}      └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  ┌─o    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} ┌┴───•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}─┘───────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep 1
clear

echo -e "${prefix}    ─┬──────────────┬───────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _└┐     ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   /  └•────┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /    ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /___─•──┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}─────────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────┬───────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____   ┌───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/───┴───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ ┌─• ┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ ┘   │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}─────────────┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────┬───────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____    ───o   ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __ ───┐   └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_┌• └─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__ │    •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ ┴──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────┬───────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____           ├────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __    └──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / ─┬─o  │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / / •    └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────────────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __────┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /──┐ o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /     │   └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____  └•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────────────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __   ─┐   ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  o─┬─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    /    └──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /•   ┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────────────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     __ ┌──┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / _─┘ ┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __──┬┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /____┌─┘    o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /──────────────o───────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────────────────•────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     _____─┘    └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/┌───┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_ ┘   │    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/     o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /──────────────────────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────┬────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   _  └──┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  / ┬─•  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _│    ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ o    ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /──────────────────────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ──────────────────────────────────────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   ____ ─┐  o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  • ┌┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   ┌─┘    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\  ├•   ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /──────────────────────────┴────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ──────────────────────────────────────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   ____   __o  └──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / _┴───┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\    • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \___  ┌───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /───────────────────────────────┴────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ──────────────────────────────────────────┬─────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____└──┬───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/─┐ o      o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  • ┌────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ ───┴─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────────────────────────────────────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____   _───•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /       o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / _────•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/ ─o    •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ────────────────────────────────────────────────────┬────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____   ____•  ├─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /       o │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/─•   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/       •─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____   _____  _─┐  └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /  │   o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /   ├───┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ ─┘   ├───────┴──•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────┬───────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____   _____  ____ └─•   ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \ o──┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /  _  /─┤  └•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ /_/  ├───────┴──•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────┴───────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────────────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____   _____  ____    _  ┌───• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ┬─┘     o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /  _  / / /└•   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ /_/ /___─────┴──•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────────────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____   _____  ____    _____──• └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/    o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /  _  / / /__   ┌──┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ /_/ /____/ /─┴──•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────────────────┬───"
echo -e "${prefix}    _____          __     _____   ____   _____   _____  ____    _____  _ └─•"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/ /  o"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /  _  / / /__  / _─┘"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ /_/ /____/ /___─•"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────────────────────"
echo -e "${prefix}    _____          __     _____   ____   _____   _____  ____    _____  _____"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/ / ___/"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /  _  / / /__  / __/_"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ /_/ /____/ /_____/"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────────────────────"
echo -e "${prefix}    _____          __     _____   ____   _____   _____  ____    _____  _____"
echo -e "${prefix}   / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/ / ___/"
echo -e "${prefix}  / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /  _  / / /__  / __/_  █▀█ ▄▀▀"
echo -e "${prefix} /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ /_/ /____/ /_____/  █▄█ ▄██"
echo -e "${prefix}───────────/ /────────────────────────────────────────────────────────────"
sleep .1
clear
echo -e "${prefix}    ─────────────────────────────────────────────────────────────────────────"
echo -e "${prefix}    ${CYANT}_____          __     _____   ____   _____   _____  ____    _____  _____${RC}"
echo -e "${prefix}   ${CYANT}/ ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/ / ___/${RC}"
echo -e "${prefix}  ${CYANT}/ /___ / /_/ / /    / / __/_  / _ \\   __\\ \\  / ___/ /  _  / / /__  / __/_${RC}  █▀█ ▄▀▀"
echo -e "${prefix} ${CYANT}/_____/ \\__  / /____/ /_____/ /_/ \\_\\ \\____/ /_/    /_/ /_/ /____/ /_____/${RC}  █▄█ ▄██"
echo -e "${prefix}───────────${CYANT}/ /${RC}───────────────────────────────────────────────────────────────"


}

#//<<

    #//>> Prompt Setup

function draw_menu {

clear

#Print Header
printf "${CYBERSPACE_MAINHEADER}"

#MAIN MENU
if [ "$sub_menu" -eq 0 ]; then

    if [ "$cur_position" -eq 0 ]; then
        printf "${CYANH}${menu_main_op1}${RC}\n"
    else
        printf "${menu_main_op1}\n"
    fi

    if [ "$cur_position" -eq 1 ]; then
        printf "${CYANH}${menu_main_op2}${RC}\n"
    else
        printf "${menu_main_op2}\n"
    fi

#Installation Menu
elif [ "$sub_menu" -eq 1 ]; then
    
    #Install Everything
    if [ "$cur_position" -eq 0 ]; then
        printf "${CYANH}${menu_inst_op1}${RC}\n"
    else
        printf "${menu_inst_op1}\n"
    fi

    #Essentials & Initializing
    if [ "$cur_position" -eq 1 ]; then
        printf "${CYANH}${menu_inst_op2}${RC}\n"
    else
        printf "${menu_inst_op2}\n"
    fi

    #Programming Development
    if [ "$cur_position" -eq 2 ]; then
        printf "${CYANH}${menu_inst_op3}${RC}\n"
    else
        printf "${menu_inst_op3}\n"
    fi

    #Terminal Programs
    if [ "$cur_position" -eq 3 ]; then
        printf "${CYANH}${menu_inst_op4}${RC}\n"
    else
        printf "${menu_inst_op4}\n"
    fi

    #Awesome Programs
    if [ "$cur_position" -eq 4 ]; then
        printf "${CYANH}${menu_inst_op5}${RC}\n"
    else
        printf "${menu_inst_op5}\n"
    fi

    #Plasma Programs
    if [ "$cur_position" -eq 5 ]; then
        printf "${CYANH}${menu_inst_op6}${RC}\n"
    else
        printf "${menu_inst_op6}\n"
    fi

    #Game Platforms
    if [ "$cur_position" -eq 6 ]; then
        printf "${CYANH}${menu_inst_op7}${RC}\n"
    else
        printf "${menu_inst_op7}\n"
    fi

    #Virtual Machines
    if [ "$cur_position" -eq 7 ]; then
        printf "${CYANH}${menu_inst_op8}${RC}\n"
    else
        printf "${menu_inst_op8}\n"
    fi

#Ricing Menu
elif [ "$sub_menu" -eq 2 ]; then
    
    if [ "$cur_position" -eq 0 ]; then
        printf "${CYANH}${menu_rice_op1}${RC}\n"
    else
        printf "${menu_rice_op1}\n"
    fi

    if [ "$cur_position" -eq 1 ]; then
        printf "${CYANH}${menu_rice_op2}${RC}\n"
    else
        printf "${menu_rice_op2}\n"
    fi

#Desktop Installers
elif [ "$sub_menu" -eq 3 ]; then
    
    if [ "$cur_position" -eq 0 ]; then
        printf "${CYANH}${menu_desk_op1}${RC}\n"
    else
        printf "${menu_desk_op1}\n"
    fi

    if [ "$cur_position" -eq 1 ]; then
        printf "${CYANH}${menu_desk_op2}${RC}\n"
    else
        printf "${menu_desk_op2}\n"
    fi

    if [ "$cur_position" -eq 2 ]; then
        printf "${CYANH}${menu_desk_op3}${RC}\n"
    else
        printf "${menu_desk_op3}\n"
    fi

    if [ "$cur_position" -eq 3 ]; then
        printf "${CYANH}${menu_desk_op4}${RC}\n"
    else
        printf "${menu_desk_op4}\n"
    fi

    if [ "$cur_position" -eq 4 ]; then
        printf "${CYANH}${menu_desk_op5}${RC}\n"
    else
        printf "${menu_desk_op5}\n"
    fi

fi

}

function prompt_setup {

while true; do

    read -t 0.25 -N 1 input

    #--------------------Move Cursor UP--------------------
    if [[ $input = "w" ]] || [[ $input = "W" ]]; then
        if [ "$cur_position" -gt 0 ]; then
            ((cur_position-=1))
        fi
    fi

    #--------------------Move Cursor DOWN--------------------
    if [[ $input = "s" ]] || [[ $input = "S" ]]; then
        if [ "$cur_position" -lt "$menu_options" ]; then
            ((cur_position+=1))
        fi
    fi

    #--------------------Main_Menu / Quit--------------------
    if [[ $input = "q" ]] || [[ $input = "Q" ]]; then
    
        if [ "$sub_menu" -eq 0 ]; then
            clear
            printf "${prefix}${CYANH}CYBERSPACE${RC}\n\n"        
            break

        else
            ((cur_position=0))
            ((sub_menu=0))
            ((menu_options=1))

        fi
    
    fi

    #--------------------Acts as Accept or Enter--------------------
    if [[ $input = "p" ]] || [[ $input = "P" ]]; then

        #Main Menu
        if [ "$sub_menu" -eq 0 ]; then

            #Change to Install Things
            if [ "$cur_position" -eq 0 ]; then
                ((cur_position=0))
                ((sub_menu=1))
                ((menu_options=7))

            #Change to Rice Things
            elif [ "$cur_position" -eq 1 ]; then
                ((cur_position=0))
                ((sub_menu=2))
                ((menu_options=1))

            fi

        #Install Things
        elif [ "$sub_menu" -eq 1 ]; then
            
            if [ "$cur_position" -eq 0 ]; then
                install_all

            elif [ "$cur_position" -eq 1 ]; then
                install_init

            elif [ "$cur_position" -eq 2 ]; then
                install_dev

            elif [ "$cur_position" -eq 3 ]; then
                install_terminal_programs

            elif [ "$cur_position" -eq 4 ]; then
                install_window_manager_applications

            elif [ "$cur_position" -eq 5 ]; then
                ((cur_position=0))
                ((sub_menu=3))
                ((menu_options=4))

            elif [ "$cur_position" -eq 6 ]; then
                install_games

            elif [ "$cur_position" -eq 7 ]; then
                install_virtual_machine

            fi

        #Rice Things
        elif [ "$sub_menu" -eq 2 ]; then
            ((debugdelete=0))

        #Desktop Menu
        elif [ "$sub_menu" -eq 3 ]; then
            
            if [ "$cur_position" -eq 0 ]; then
                install_desktop_applications

            elif [ "$cur_position" -eq 1 ]; then
                install_desktop_basics

            elif [ "$cur_position" -eq 2 ]; then
                install_desktop_media

            elif [ "$cur_position" -eq 3 ]; then
                install_desktop_creator

            elif [ "$cur_position" -eq 4 ]; then
                install_plasma5_dependencies

            fi

        fi

    fi

    draw_menu

done

}
#//<<

#//<<

#//>> Install Programs

        #//>> Install KDE & Awesome
function install_kde { 

#doas pacaman -S xorg xorg-xinit plasma-wayland-session egl-wayland sddm
#doas pacman -S plasma kde-applications
doas pacman -S awesome

}
       #//<<

        #//>> Arch Essentials & Initialization & Backup
function install_init {
echo -e "${CYANH}System Essentials & Initialization${RC}" && sleep 2

sudo pacman -Syyuu
sudo pacman -S archlinux-keyring git base-devel grub-customizer power-profiles-daemon firewalld opendoas pulseaudio-bluetooth ntfs-3g xboxdrv
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

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Syu
yay -S timeshift

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
doas systemctl enable --now snapd.socket
doas systemctl enable --now snapd.apparmor
doas ln -s /var/lib/snapd/snap /snap
cd ..

doas pacman -S flatpak
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak update
#-------------BROKEN v ^ v ^ v ^ v ^ v ^ v ^
#sudo timeshift --create --comments "Fresh Install"

cd ~
rm -r Temporary --force
doas pacman -Sc

}
#//<<-----

        #//>> Development
function install_dev {

echo -e "${CYANH}Development${RC}" && sleep 2
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
doas pacman -S gcc gdb

}
#//<<-----

        #//>> Terminal Programs

function install_terminal_basics {

doas pacman -S fbset tmux w3m ranger htop neofetch git base-devel pkgfile man
doas snap install mapscii

}

function install_terminal_media {

doas pacman -S cmus feh neovim
yay -S epy-ereader-git --no-confirm
    
}

function install_terminal_programs {

install_terminal_basics
install_terminal_media

}
#//<<-----

        #//>> Window Manager Programs
function install_window_manager_applications {

doas pacman -S nitrogen --no-confirm

}
       #//<<

        #//>> Desktop Programs

function install_desktop_basics {

doas pacman -S yakuake discord flameshot
yay -S protonvpn brave-bin timeshift
doas snap install keepassxc

}

function install_desktop_creator {

doas pacman -S blender audacity kdenlive libreoffice-fresh
yay -S vscodium-bin

}

function install_desktop_media {

doas pacman -S vlc calibre elisa kiwix-desktop qbittorrent

}

function install_plasma5_dependencies {

doas pacman -S kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip qt5-base qt5-svg qt5-declarative qt5-quickcontrols kdecoration qt5-x11extras
yay -S plasma5-applets-window-buttons plasma5-applets-window-appmenu ocs-url kwin-bismuth

}

function install_desktop_applications {

install_desktop_basics
install_desktop_creator
install_desktop_media
install_plasma5_dependencies

}
#//<<-----

        #//>> Games / Platforms / Emulators

function install_game_platforms {

doas pacman -S steam lutris wine wine-mono wine-gecko

}

function install_games {

doas pacman -S openmw
yay -S minecraft-launcher

}

function install_emulators {

doas pacman -S snes9x mupen64plus dolphin-emu vbam-sdl dosbox
yay -S nestopia cemu
doas snap install ppsspp
echo -e "${CYANH}Yuzu, Pcsx2 Rpcs3 & ePSXe are Appimages${RC}"
kde-open https://yuzu-emu.org/downloads/
kde-open https://pcsx2.net/downloads
kde-open https://rpcs3.net/download
kde-open https://www.epsxe.com/download.php
# Xenia can only run on Windows so get it setup on windows VM

}

function install_gaming_all {

install_game_platforms
install_games
install_emulators

}
#//<<-----

        #//>> Virtual Machines
function install_virtual_machine {

echo -e "${CYANH}Virutal Machines${RC}" && sleep 2

doas pacman -S qemu
doas pacman -S virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libguestfs libvirt
doas systemctl enable --now libvirtd.service
doas usermod -aG libvirt "$USER"
#if that doesnt work doas usermod -aG libvirt $(whoami)
#Ensure /etc/libvirt/libvirtd.conf has the entries: unix_sock_group = "libvirt" --- unix_sock_ro_perms = "0777" --- unix_sock_rw_perms = "0770"

echo -e "${CYANH}Done! Reboot Recommended. if you dont, at least logout then login${RC}"


# https://github.com/ntdevlabs/tiny11builder

}
#//<<-----

function install_all {

install_init
install_dev
install_terminal_programs
install_window_manager_applications
install_desktop_applications
install_gaming_all
install_virtual_machine

reboot

}
#//<<

#//>> Rice Enviornments

    #//>> Terminal
function rice_terminal {

echo -e "${CYANH}Ricing Terminal${RC}"
sleep 2

#----------Edit Bashrc----------

echo -e "#\n# ~/.bashrc\n#\n\n# if not running interactively, dont do anything\n[[ \$- != *i* ]] && return\n# alias ls='ls --color=auto'\n\n#  white before vv       cyan vv   user    blue vv   dir    cyan vv   > [space] white after\nPS1='\\[\\\033[1;37m\\]\\[\\\033[1;36m\\][\\u]\\[\\\033[1;34m\\] \\w\\[\\\033[1;36m\\]> \\[\\\033[1;37m\\]'\n\n# Custom bash commands\nalias de=\"doas systemctl start sddm\"\nalias bluetooth=\"doas systemctl start bluetooth\"\nalias cs=\"cd ~/Downloads/ && ./CyberSpace_OS.sh \"\nalias logout=\"qdbus org.kde.ksmserver /KSMServer logout 0 3 3\"\nalias uninstall=\"doas pacman -Rns\"\nalias install=\"doas pacman -S\"\nalias update=\"doas pacman -Syyuu && doas pacman -Sc && rustup update\"\nalias sudo=\"doas\"" | sudo tee ~/.bashrc

                    # CREATES THIS IN THE TEXT FILE v V V V V V v

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
# alias cs="cd ~/Downloads/ && ./CyberSpace_OS.sh"
# alias logout="qdbus org.kde.ksmserver /KSMServer logout 0 3 3"
# alias uninstall="doas pacman -Rns"
# alias install="doas pacman -S"
# alias update="doas pacman -Syyuu && yay && doas pacman -Sc && rustup update"
# alias sudo="doas"

    # Which Displays as v V V V V V v

# [omni] ~/Documents/Files> █

#-----------Edit /etc/issue to display ascii_name-----------

echo -e "\n                      ----------Omninaut Presents----------\n     _________________________________________________________________________\n     \\\e[36m_____          __     _____   ____   _____   _____  ____    _____  _____\\\e[0m\n    \\\e[36m/ ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \\\\\\  / ___/ / ___/\\\e[0m\n   \\\e[36m/ /___ / /_/ / /    / / __/_  / _ \\\\\\   __\\\\\\ \\\\\\  / ___/ /  _  / / /__  / __/_\\\e[0m\n  \\\e[36m/_____/ \\\\\\__  / /____/ /_____/ /_/ \\\\\\_\\\\\\ \\\\\\____/ /_/    /_/ /_/ /____/ /_____/\\\e[0m\n ___________\\\e[36m/ /\\\e[0m____________________________________________________________\n                                                      \\\r (\l)" | sudo tee /etc/issue

                    # CREATES THIS IN THE TEXT FILE v V V V V V v

#                      ----------Omninaut Presents----------
#     _________________________________________________________________________
#     \e[36m_____          __     _____   ____   _____   _____  ____    _____  _____\e[0m
#    \e[36m/ ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/ / ___/\e[0m
#   \e[36m/ /___ / /_/ / /    / / __/_  / _ \\   __\\ \\  / ___/ /  _  / / /__  / __/_\e[0m
#  \e[36m/_____/ \\__  / /____/ /_____/ /_/ \\_\\ \\____/ /_/    /_/ /_/ /____/ /_____/\e[0m
# ___________\e[36m/ /\e[0m____________________________________________________________
#                                                       \r (\l)

                        # Which Displays as v V V V V V v

#                      ----------Omninaut Presents----------
#     _________________________________________________________________________
#     _____          __     _____   ____   _____   _____  ____    _____  _____
#    / ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/ / ___/
#   / /___ / /_/ / /    / / __/_  / _ \   __\ \  / ___/ /  _  / / /__  / __/_
#  /_____/ \__  / /____/ /_____/ /_/ \_\ \____/ /_/    /_/ /_/ /____/ /_____/
# ___________/ /____________________________________________________________
#                                                     arch linux tty1 5.6.1

#----------Grub Ascii Art----------
echo -e ":(" | sudo tee ~/Desktop/grub_ascii_art.txt

#Plasma Rice Saver & Loader (Recreation)

}
#//<<

    #//>> Awesome
function rice_awesome {

echo -e "${CYANH}NOT FINISHED! DID NOTHING. Now how will i get on Unixporn${RC}"

sleep 2

}
#//<<

    #//>> Plasma
function rice_plasma {

# Lightly
git clone --single-branch --depth=1 https://github.com/Luwx/Lightly.git
cd Lightly && mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
make
doas make install

#to uninstall: (while in this folder)
# doas make uninstall

echo -e "Installing Application Extensions"
#General Kde config dot files
#Yakuake - tabs translucent + config file - Nord Theme
#VSCode -rust - explicit code folding - nord themes
#browser - Ublock Origin - adblock plus - youtube adblock - sponsored skip - Nord Theme - dark mode - zoom to fill ultrawide - floating for youtube
#blender - texel density
#audacity - ffmpeg
#calibre - DRM remover


}

#//<<

#//<<

play_centered_anim
prompt_setup

#//>>                ----Custom Stuff to make----           !!!DELETE BELOW!!!

# Grub Screen https://nx2.site/grub-ascii-theme
# KDE Recreations
# Game Launcher / visual Organizer (dear IMGUI)

# ----------TODO-------------------

# Make a bash function that creates / replace / stores the plama rices. (replacing plasma customizer widget)
    # Windows 95
    # Windows XP
    # Windows Vista
    # Windows 10
    # MacOS Monterey
    # Windows Future / Super-Fluent / 12 concept https://www.reddit.com/r/unixporn/comments/13tb2rt/kde_6_months_ago_this_windows_12_leaked/
    # Super Clean / Modern / all white & transparency Arch
# Plasmoids
    # basic trash can icon changer (maybe even animate it)
# Make Grub Ascii art and bash it
# make all KDE Ricer (Saver & Loader). if possible DONT have it be a plasmoid but maybe a sub-function of this program + a very very tiny program that can always run. Maybe like yakuake where it can be quit or launched but only runs in the background doing nothing, not taking any resources, then when you click the show more functions in the task tray, its a little window that shows the saved rices and you can just click to restore & click to save current setup. 
#https://github.com/shalva97/kde-configuration-files

# rewrite installer to do a full install with everything then add a second option to manually choose each thing. also change colors. 
#       This includes the actual install of arch, aka no archinstall script. This will be the only thing needed besides an arch iso
# remake yakuake theme from scratch with a fresh install
# gather/complete instructions for each kde rice. THEN:
# 	bash it with files and make it autorun
# CHANGE directories to a temp location
# 	maybe add an option to save all downloaded files as backup to a folder after install
# change color theme for system overall to NORD & teal
# see if its possible to play sounds from terminal.

# Make installer a graphical enviornment like archinstall. Make arrows move selection and have to press q to quit or choose menu option quit
# make installer a game
# make a linux bash version of Tiny11's .bat except automate the downloading of the windows.iso & msdconfig or whatever additional file is needed. Basically automate somehow with this bash script, downloading windows 11, then stripping it and feeding it to the virtual machine. 
# find out if KDE's settings are saved into a file and also how to clear & edit files
# Maybe install KDE from a base terminal setup and that way wayland isnt installed and everything is clean. look into what archinstall does and see if its possible to just do it here. Then maybe just test it by having a copy of cyberspaceos on a flash drive

# ----------Links
# https://www.shellhacks.com/yes-no-bash-script-prompt-confirmation/
# https://github.com/ytdl-org/youtube-dl

#---------Dependencies for themes


# Plasma Customizer Saver   1298955
#Lightly                    1414190     https://github.com/Luwx/Lightly
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

#----------------------Steps----------------------
# 1) Finish the bash script and have it install and set everything up. 
# 2) Translate it into rust. Making it function identically but as a standalone binary
# 3) create options and terminal choices and changes that determine whats installed and changed
# 4) make ascii art and a "game" out of installing linux.
# 5) maybe make things more complicated with 3d to ascii art renderer and some insane customizations (if i feel like wasting my life) like choosing an init system and package manager. Basically it could reach its final evolution. Like going from ricing an installed arch to using archinstall to installing arch itself to doing linux from scratch and basically being able to make any distro by choosing its package manager and mirror list and desktop enviornment and everything. 

#//<<


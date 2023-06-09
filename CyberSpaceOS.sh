#!/bin/bash

#------Omninaut Presents------
#        CyberSpace OS
#0.09

#//>> Installing Archw

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
# Include git during install under "additional packages" && use GRUB
# cd Downloads
# git clone https://github.com/theomninaut/CyberSpaceOS
# cd CyberSpaceOS
# chmod +x CyberSpaceOS.sh
# ./CyberSpaceOS.sh

#//<<


#//>> Startup Ascii Animation
function play_centered_anim {

clear

columns=$(tput cols)
#78 width without "OS", 85 with it. Middle ground is 82
banner_width=82
indent=$(( (columns - banner_width) / 2 ))
prefix=''
for ((i=1; i<=indent; i++)) ; do
    prefix+=' '
done

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
echo -e "${prefix}    \e[36m_____          __     _____   ____   _____   _____  ____    _____  _____\e[0m"
echo -e "${prefix}   \e[36m/ ___/ __  __  / /__  / ___/  /   /  / ___/  /    / /    \  / ___/ / ___/\e[0m"
echo -e "${prefix}  \e[36m/ /___ / /_/ / /    / / __/_  / _ \\   __\\ \\  / ___/ /  _  / / /__  / __/_\e[0m  █▀█ ▄▀▀"
echo -e "${prefix} \e[36m/_____/ \\__  / /____/ /_____/ /_/ \\_\\ \\____/ /_/    /_/ /_/ /____/ /_____/\e[0m  █▄█ ▄██"
echo -e "${prefix}───────────\e[36m/ /\e[0m───────────────────────────────────────────────────────────────"


}

#//<<

#//>> Prompt Setup
function prompt_setup {
echo
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

install_all
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

        #//>> Install KDE & Awesome
function install_kde { 

#doas pacaman -S xorg xorg-xinit plasma-wayland-session egl-wayland sddm --no-confirm
#doas pacman -S plasma kde-applications --no-confirm
doas pacman -S awesome --no-confirm

}
       #//<<

        #//>> Arch Essentials & Initialization & Backup
function install_init {
echo -e "\e[31mSystem Essentials & Initialization\e[0m" && sleep 2

sudo pacman -Syyuu --noconfirm
sudo pacman -S archlinux-keyring git base-devel grub-customizer power-profiles-daemon firewalld opendoas pulseaudio-bluetooth --noconfirm
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
makepkg -si --noconfirm
yay -Syu --noconfirm
yay -S timeshift --noconfirm

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
doas systemctl enable --now snapd.socket
doas systemctl enable --now snapd.apparmor
doas ln -s /var/lib/snapd/snap /snap
cd ..

doas pacman -S flatpak --noconfirm
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak update
#-------------BROKEN v ^ v ^ v ^ v ^ v ^ v ^
#sudo timeshift --create --comments "Fresh Install"

cd ~
rm -r Temporary --force
doas pacman -Sc --noconfirm

}
#//<<-----

        #//>> Development
function install_dev {

echo -e "\e[31mDevelopment\e[0m" && sleep 2
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
doas pacman -S gcc gdb --noconfirm

}
#//<<-----

        #//>> Terminal Programs
function install_terminal_programs {

echo -e "\e[31mInstalling Terminal Programs\e[0m" && sleep 2

doas pacman -S fbset tmux cmus w3m ranger htop feh neofetch neovim git base-devel pkgfile man --noconfirm
doas snap install mapscii

}
#//<<-----

        #//>> Window Manager Programs
function install_window_manager_applications {

doas pacman -S nitrogen --no-confirm

}
       #//<<

        #//>> Desktop Programs
function install_desktop_applications {

echo -e "\e[31mInstalling Desktop Programs\e[0m" && sleep 2

doas pacman -S yakuake blender vlc calibre elisa kiwix-desktop audacity discord qbittorrent kdenlive flameshot libreoffice-fresh --noconfirm
yay -S epy-ereader-git protonvpn brave-bin vscodium-bin timeshift --noconfirm
doas snap install keepassxc

echo -e "\e[31mInstalling Dependencies for KDE Ricing\e[0m"
sleep 2
doas pacman -S kvantum hicolor-icon-theme knewstuff plasma-framework extra-cmake-modules scrot spectacle kdialog cmake python plasma-framework plasma-desktop plasma-wayland-protocols gtk-engine-murrine sassc gnome-themes-extra zip unzip qt5-base qt5-svg qt5-declarative qt5-quickcontrols kdecoration qt5-x11extras --noconfirm
yay -S plasma5-applets-window-buttons plasma5-applets-window-appmenu ocs-url kwin-bismuth --noconfirm

}
#//<<-----

        #//>> Games / Platforms / Emulators
function install_games {

echo -e "\e[31mGames / Platforms / Emulators\e[0m" && sleep 2

# Platforms
doas pacman -S steam lutris wine wine-mono wine-gecko --noconfirm

# Games
doas pacman -S openmw --noconfirm
yay -S minecraft-launcher --noconfirm

# Emulators
doas pacman -S snes9x mupen64plus dolphin-emu vbam-sdl dosbox --noconfirm
yay -S nestopia cemu --noconfirm
doas snap install ppsspp
echo -e "\e[31mYuzu, Pcsx2 Rpcs3 & ePSXe are Appimages\e[0m"
kde-open https://yuzu-emu.org/downloads/
kde-open https://pcsx2.net/downloads
kde-open https://rpcs3.net/download
kde-open https://www.epsxe.com/download.php
# Xenia can only run on Windows so get it setup on windows VM

}
#//<<-----

        #//>> Virtual Machines
function install_virtual_machine {

echo -e "\e[31mVirutal Machines\e[0m" && sleep 2

doas pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libguestfs libvirt --noconfirm
doas systemctl enable --now libvirtd.service
doas usermod -aG libvirt "$USER"
#if that doesnt work doas usermod -aG libvirt $(whoami)
#Ensure /etc/libvirt/libvirtd.conf has the entries: unix_sock_group = "libvirt" --- unix_sock_ro_perms = "0777" --- unix_sock_rw_perms = "0770"

echo -e "\e[32mDone! Reboot Recommended. if you dont, at least logout then login\e[0m"


# https://github.com/ntdevlabs/tiny11builder

}
#//<<-----

function install_all {

install_init
install_dev
install_terminal_programs
install_window_manager_applications
install_desktop_applications
install_games
install_virtual_machine

reboot

}
#//<<

#//>> Terminal
function rice_terminal {

echo -e "\e[32mRicing Terminal\e[0m"
sleep 2

#----------Edit Bashrc----------

echo -e "#\n# ~/.bashrc\n#\n\n# if not running interactively, dont do anything\n[[ \$- != *i* ]] && return\n# alias ls='ls --color=auto'\n\n#  white before vv       cyan vv   user    blue vv   dir    cyan vv   > [space] white after\nPS1='\\[\\\033[1;37m\\]\\[\\\033[1;36m\\][\\u]\\[\\\033[1;34m\\] \\w\\[\\\033[1;36m\\]> \\[\\\033[1;37m\\]'\n\n# Custom bash commands\nalias de=\"doas systemctl start sddm\"\nalias bluetooth=\"doas systemctl start bluetooth\"\nalias omnispace=\"cd ~/Downloads/ && ./OmniSpace_OS.sh \"\nalias logout=\"qdbus org.kde.ksmserver /KSMServer logout 0 3 3\"\nalias uninstall=\"doas pacman -Rns\"\nalias install=\"doas pacman -S\"\nalias update=\"doas pacman -Syyuu && doas pacman -Sc && rustup update\"\nalias sudo=\"doas\"" | sudo tee ~/.bashrc

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
# alias cyberspace="cd ~/Downloads/ && ./CyberSpace_OS.sh"
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

echo -e "\e[32mNOT FINISHED! DID NOTHING. Now how will i get on Unixporn\e[0m"

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

play_centered_anim
prompt_setup

#//>>                ----Custom Stuff to make----

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


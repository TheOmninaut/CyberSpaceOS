Personal DOT Files but ranging across all programs and entire system. May migrate to NixOS

NOTE:
Still early and only working on this in my free time so it only installs a few programs currently. soon i will add all of the planned features as well as details on the packages and reasons behind their addition.
this is my just for my personal setup. its an ease of use for me so i can get my systems setup quickly for fresh installs and new PC's. Not intended for a general audience or community appeal but it is available in case anyone is interested. ive tried to comment and organize the main file so any changes you might want to make are easily done in a single bash file. 

------ What is this ------
An automated bash script to install packages and rice arch linux. Originally i wanted to make a distro but do not have the time required to maintain such a project. I also wouldve base it on arch, so all of the custom aspects can technically be done in a bash script anyway. This makes any system running arch (or a distro based on it) possible to convert to or use the parts of this project. Sort of like a script that could turn base arch into another distro. 

Everything is seperated by type of change and made into an interactive terminal installer that allows you to choose what parts you would like. Everything is segmented so you could you decide to revert anything or only install/change what you want. no files are deleted just moved so its possible to restore. timeshift is installed by default and a restore point is created before any changes are made. (NOT CURRENTLY, current build is broken)

Eventually i want nothing else besides a base arch.iso to be required so it could do everything required. However, currently it does not install arch. The current version is based off installs that were done using the archinstall script. Removing this requirement is an eventual goal, but right now it only works on installations that were done with archinstall and done with specific settings. 

It is a bash script now but may be remade in a different language, possibly rust. However bash provides a simplicity and readability that allows anyone to edit or use specific parts. Making it extremely transparent and customizable. The current tasks, actions, and rices that are done based on my preferred setup but will eventually be laid out (in the documentation) where it can be customized

-----Install/Run-----

git clone https://github.com/TheOmninaut/CyberSpaceOS

cd CyberSpaceOS

chmod +x CyberSpaceOS.sh

./CyberSpaceOS.sh

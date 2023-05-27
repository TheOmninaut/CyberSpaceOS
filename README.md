NOTE:
Still incredibly early and only working on this in my free time so it only installs a few programs currently. soon i will add all of the planned features as well as details on the packages and reasons behind their addition.
this is my just for my personal setup. its an ease of use for me so i can get my systems setup quickly for fresh installs and new PC's. Not intended for a general audience or community appeal but it is available in case anyone is interested. ive tried to comment and organize the main file so any changes you might want to make are easily done in a single bash file. 

------ What is CyberSpace6? ------
An automated bash script to install packages and rice arch linux. Originally i wanted to make a distro but do not have the time required to maintain such a project. I also wouldve base it on arch, so all of the custom aspects can technically be done in a bash script anyway. This makes any system running arch (or a distro based on it) possible to convert to or use the parts of this project. 

The goal is to make a simple one command file that can make all of the changes to the system that a distro could come with. I also would like to seperate everything and make an interactive terminal installer that allows you to choose what is changed and what parts you would like to leave out. I also want everything to be segmented so should you decide to revert anything, no files are deleted just moved so its possible to restore. timeshift is installed by default and a restore point is created before any changes are made. 

-----Install/Run-----

git clone https://github.com/TheOmninaut/ArchSetup

cd ArchSetup

chmod +x CyberSpaceOS.sh

./CyberSpaceOS.sh

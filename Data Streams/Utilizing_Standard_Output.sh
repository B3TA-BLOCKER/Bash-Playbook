#!/bin/bash

# Optimizing "Universal_update.sh" script

release_file=/etc/os-release
longfiles=/var/log/update.log
errorlog=/var/log/update_errors.log

if grep -q "Arch" $release_file 
then
    sudo pacman -Syu -y  1>>$longfiles 2>>$errorlog  # This comand will run in the background and no output will be shown on the screen
    if [ $? -ne 0 ]  # (ne) means "Not equals to Zero"
    then 
        echo "An error occured, please check the $errorlog files."
    fi
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then 
    sudo apt update -y 1>>$longfiles 2>>$errorlog   # This comand will run in the background and no output will be shown on the screen
    sudo apt dist-upgrade -y 1>>$longfiles 2>>$errorlog   # This comand will run in the background and no output will be shown on the screen
    if [ $? -ne 0 ]  # (ne) means "Not equals to Zero"
    then 
        echo "An error occured, please check the $errorlog files."
    fi
fi


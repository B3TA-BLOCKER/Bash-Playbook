#!/bin/bash

release_file=/etc/os-release
longfiles=/var/log/update.log
errorlog=/var/log/update_errors.log

# Depending on which OS you are running you can change the search criteria

if grep -q "Arch" $release_file # I want to search for the term "Arch" inside the release_file  
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu -y  1>>$longfiles 2>>$errorlog
    if [ $? -ne 0 ]  # (ne) means "Not equals to Zero"
    then 
        echo "An error occured, please check the $errorlog files."
    fi
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then 
    # The host is based on Debian or Ubuntu ,
    # Run the apt version of the command
    sudo apt update -y 1>>$longfiles 2>>$errorlog
    sudo apt dist-upgrade -y 1>>$longfiles 2>>$errorlog
    if [ $? -ne 0 ]  # (ne) means "Not equals to Zero"
    then 
        echo "An error occured, please check the $errorlog files."
    fi
fi


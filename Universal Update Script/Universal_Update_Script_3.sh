#!/bin/bash

release_file=/etc/os-release

# Depending on which OS you are running you can change the search criteria

if grep -q "Arch" $release_file # I want to search for the term "Arch" inside the release_file  
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then 
    # The host is based on Debian or Ubuntu ,
    # Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi


#!/bin/bash

release_file=/etc/os-release

# Depending on which OS you are running you can change the search criteria

# grep is a standard Linux command (it checks for the existence of the text)
# grep is able to search for text files for specific strings,
# It also supports regular expressions 

# -q is quiet mode
if grep -q "Arch" $release_file # I want to search for the term "Arch" inside the release_file  
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file
then 
    # The host is based on Debian,
    # Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi

if grep -q "Ubuntu" $release_file # I want to search for the term "Ubuntu" inside the release_file
then
    # The host is based on Ubuntu,
    # Run the apt version of the command

    sudo apt update
    sudo apt dist-upgrade
fi
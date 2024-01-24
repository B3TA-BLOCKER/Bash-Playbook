#!/bin/bash

if [ -d /etc/pacman.d ]
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

if [ -d /etc/apt ]
then
    # The host is based on Debian or Ubuntu,
    # Run the apt version of the command

    sudo apt update
    sudo apt dist-upgrade
fi
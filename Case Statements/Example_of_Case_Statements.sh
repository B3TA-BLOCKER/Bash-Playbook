#!/bin/bash

# Simple Menu

clear

echo "What is your favorite Linux Distribution? "

echo "1 - Arch"
echo "2 - CentOS"
echo "3 - Debian"
echo "4 - Mint"
echo "5 - Ubuntu"
echo "6 - Something else..."

read distro;

case $distro in 
    1) echo "Arch is a rolling release.";; # These case statement will not work eithout these semi colons 
    2) echo "CentOS is popular on servers.";;
    3) echo "Debian is a community distribution.";;
    4) echo "Mint is popular on desktops and laptops.";;
    5) echo "Ubuntu is popular on both servers and computers.";;
    6) echo "There are many distribution out there.";;
    *) echo "You didn't enter an appropriate choice." # The last line dont need a semi colon
esac

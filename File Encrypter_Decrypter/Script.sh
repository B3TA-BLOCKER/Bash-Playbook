#!/bin/bash

clear # clear screen command.

# Check if the operating system is Kali Linux
if [[ $(cat /etc/os-release | grep "ID=.*kali") ]]; 
then
    echo "Operating system is Kali Linux. The tool used is pre-installed in this Operating System."
else
    # Install gpg
    echo "Operating system is not Kali Linux. Installing GnuPG (gpg)..."
    if [[ $(command -v apt-get) ]]; 
    then
        sudo apt-get update
        sudo apt-get install -y gnupg
    elif [[ $(command -v yum) ]]; 
    then
        sudo yum install -y gnupg
    elif [[ $(command -v dnf) ]]; 
    then
        sudo dnf install -y gnupg
    else
        echo "Error: Unsupported package manager. Please install GnuPG manually."
        exit 1
    fi
fi
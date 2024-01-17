#! /bin/bash

variable=htop

if command -v $variable # command checks for the existence of a command
then    
    echo "$variable is avaliable, let's run it ..."
else
    echo "$variable is NOT avaliable, installing it ..."
    sudo apt update && sudo apt install $variable -y
fi

$variable

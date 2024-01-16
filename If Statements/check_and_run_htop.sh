#! /bin/bash

command=/usr/bin/htop

if [ -f $command ]
then    
    echo "$command is avaliable, let's run it ..."
else
    echo "$command is NOT avaliable, installing it ..."
    sudo apt update && sudo apt install htop -y
fi

$command

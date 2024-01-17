#!/bin/bash

package=htop

sudo apt install $package

if [ $? -eq 0 ] # Exit code = 0  means successful and Exit code other than 0 means failed
then
    echo "The installation of $package was successful."
    echo "The new command is avaliable here : "
    which $package # we'll get the path to the package installed.
else
    echo "$package failed to install "
fi


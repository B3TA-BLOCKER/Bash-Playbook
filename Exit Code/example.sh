#!/bin/bash

clear # clear screen

directory=/etc

if [ -d $directory ]
then
    echo "The directory $directory exists."
    exit 0
else
    echo "The directory $directory doesn't exists."
fi

echo "The exit code for this script run is : $?"
echo "You didn't see that statement."
echo "You won't see this one either."

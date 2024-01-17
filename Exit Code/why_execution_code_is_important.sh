#!/bin/bash

directory=/etc

if [ -d $directory] # (-d) checks for the existence of a particular directory.
then 
    echo "The directory $directory exists."
else 
    echo "The directory $directory doesn't exits."
fi

echo "The exit code for this script run is $? "

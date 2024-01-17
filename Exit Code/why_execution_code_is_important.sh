#!/bin/bash

directory=/etc

if [ -d $directory] # (-d) checks for the existence of a particular directory.
then 
    echo "The directory $directory exists."
else 
    echo "The directory $directory doesn't exits."
fi

echo "The exit code for this script run is $? " # Whether the directory exists or not, the exit code will be 0.
# The previous command was an "echo" command, and since its execution was successful, the exit code will always be ZERO (0).

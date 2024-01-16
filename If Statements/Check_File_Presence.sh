#!/bin/bash

# (-f) is representing a check for a file

if [ -f ~/myfile ] # (~) is representing the home directory
then 
    echo "The file exists."
else 
    echo "The file does not exists."
fi
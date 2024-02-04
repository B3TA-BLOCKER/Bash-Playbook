#!/bin/bash

lines=$(ls -lh $1 | wc -l)
# (wc) is the word count command 
# (-l) is used for line count

# if no argument is passed in the script
if [ $# -ne 1 ] # ($#) represents the nnumber of arguments the user has passed into the script.
then 
    echo "This script requires exactly one directory path passed to it."
    echo "Please try again."
    exit 1
fi

echo "You have $((lines-1)) objects in the $1 directory" 
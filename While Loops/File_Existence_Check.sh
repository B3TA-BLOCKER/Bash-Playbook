#!/bin/bash

clear
while [ -f ~/testfile ]
do
    echo "The file exists."
done

echo "The file no longer exists. Exiting."
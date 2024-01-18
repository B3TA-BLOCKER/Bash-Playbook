#!/bin/bash

myvar=1
clear # it will clear the screen
while [ $myvar -le 10 ] # (-le) means less than equal to
do
    echo $myvar
    myvar=$(( $myvar +1 ))
    sleep 0.5 # Execution will pause for half a second
done
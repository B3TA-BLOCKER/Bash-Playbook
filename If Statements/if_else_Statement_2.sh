#!/bin/bash

myval=500

if [ ! $myval -eq 500 ] # (!) before $myval negates the condition, checking if the variable $myval is not equal to 500 
then
    echo "The value is not equal to 500 "
else 
    echo "The value is equal to 500 "
fi

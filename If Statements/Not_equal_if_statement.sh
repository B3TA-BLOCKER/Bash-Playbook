#!/bin/bash

myval=500

if [ $myval -nq 500 ] # nq means NOT EQUALS 
then
    echo "The value is not equal to 500 "
else 
    echo "The value is equal to 500 "
fi

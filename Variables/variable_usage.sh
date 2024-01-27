#!/bin/bash

# Variable allows us to store information for later use.

# Dclaring a variable 
# (You type whatever you want to name your variable and then include the equal sign{=} with no space and assign the variable with some value or text).

myname="Hassaan"
myage="20"

# one way we can reference the variable is to print its contents and we can do it with the {echo} command 

# echo myname
# This isn't going to work when ever we reference a variable in bash we have to include a dollar sign in front of the name of the variable 

clear # clear screen

echo "My name is $myname."
echo "I'm $myage years old"

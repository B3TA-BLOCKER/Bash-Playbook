#!/bin/bash

# The exit code allows us to determine whether the command we entered was successful or not.

clear # clear screen

package=htop

sudo apt install $package

echo "The exit code of the package install is : $?"


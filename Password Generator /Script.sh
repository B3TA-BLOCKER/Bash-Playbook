#!/bin/bash

clear # clear screen command 

# User is going to enter the length of the password.
echo -n -e "Please Enter the length of the password \n-> "
read Password_Lenght

for P in $(seq 1);
do
    openssl rand -base64 48 | cut -c1-$Password_Length
done

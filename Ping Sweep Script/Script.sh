#!/bin/bash

# A Simple Ping Sweep Script

# The purpose or the function of this is to ping a subnet or a set of ip addresses of your choice.
# And to check whether the target is online or not.

# Asking the user to Enter a subnet.
echo "Please Enter the Subnet : "
read SUBNET

# We are dealing with ip addresses 
# and a range that you can specify within the script depending on the amount of ip address

for ip in $(seq 1 254); 
do
    # this is where we are specifying the range in terms of the subnet
    # If you are scanning the entire subnet you're scanning ips from 1--->254.
    # So we use {sequence} it can use characters, keywords and also numbering (which we are doing in this case).

    ping -c 1 $SUBNET.$ip # (-c) is used for specifying the count of pings 
    # So the count of ping is going to be one.
    # we want to ping each ip once.
done


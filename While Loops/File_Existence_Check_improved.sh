#!/bin/bash

clear # clear screen

while [ -f ~/testfile ]
do
    echo "As of $(date), the test file exists. "
done

echo "As of $(date), the test file has gone missing."

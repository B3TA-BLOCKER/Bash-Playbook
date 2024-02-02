#!/bin/bash

# If you want to add some numbers in bash, you have to present the information in a way that bash 
# understands what you are trying to do.

# 30 + 40     This won't work.

# Specifically in bash, we have the (evaluate expression) which is abbreviated as {expr} 
# that lets bash know what you are trying to do.

clear

expr 30 + 40
expr 30 - 10
expr 30 / 3

# But in the case of multiplication, this won't work.
# expr 100 * 4

# Because (*) in bash is a wildcard. It means everything.

expr 100 \* 4

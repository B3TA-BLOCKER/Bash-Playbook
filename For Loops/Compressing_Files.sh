#!/bin/bash

clear 

for file in longfiles/*.log 
do 
    tar -czvf $file.tar.gz $file
    # This line creates a compressed tarball (.tar.gz) for each log file in the loop. 
    # -c: create a new archive
    # -z: compress the archive using gzip
    # -v: verbosely list the files processed
    # -f: use archive file specified (the file name is the original log file with .tar.gz extension)
done
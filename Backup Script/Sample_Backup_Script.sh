#!/bin/bash

clear

# Check to make sure the user has entered exactly two arguments.
if [ $# -ne 2 ]
then 
    echo "Usage: Sample_Backup_Script.sh <source_directory> <target_directory>"
    echo "Please try again!"
    exit 1
fi

# Check to see if rsync is installed
if ! command -v rsync > /dev/null 2>&1  # This if statement is using (command -v) to find out whether not rsync is installed on the system
    # Now all the output of this command is being sent to (/dev/null). 
    # We are not interested in the output we just want to check the existence of rsync. 
    # And we are sending both standard error and standard output to (/dev/null)
then 
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again."
    exit 2
fi

# Capture the current date, and store it in the formate YY-MM-DD
current_date=$(date +%Y-%m-%d)

rsync_option="-avb --backup-dir $2/$current_date --delete --day-run"
# Inside the double quoyes there are all the options that you can pass to rsync if you are running rsync 

# -avb
    # a is archive mode {it tries to retain all the metadata}
    # v is verbose {that actually shows what's going on in output}
    # b is telling rsync we would rather not have files replaced on the target

# --backup-dir
    # backup directory is actually something that you can use in addition to the option (b)

# $2 is the second argument 
# $current_date 
    # This is a variable holding the current date. 
    # The backup directory will be a subdirectory within the second argument directory, and its name will be the current date.

# --delete
    # This option instructs rsync to delete files in the destination directory that don't exist in the source directory. 
    # This helps in keeping the destination directory an exact mirror of the source.

# --dry-run 
    # This is just to make sure that everything is running the way we think it should 
    # This is only for testing purposes when using this script for an actual backup remove {--dry-run}

$(which rsync) $rsync_option $1 $2/current >> Sample_Backup_Script_$current_date.log

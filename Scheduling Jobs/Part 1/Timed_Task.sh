#!/bin/bash

# use the at command to run this script at your desirable time
# usw this command (at "time" -f ./script_name)
# using the (atq) command will tell us time at which this script has executed
# using the (atrm) command followed by the job number 
logfile=job_results.log

echo "The script run at the following time: $(date)" > $logfile
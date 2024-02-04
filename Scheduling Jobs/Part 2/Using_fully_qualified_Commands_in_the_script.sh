#!/bin/bash

# The "which" command in Linux is used to locate the executable file associated with a given command in the system's PATH.
# It helps identify the full path of the command, aiding in troubleshooting or determining the version of the command being executed.
logfile=job_results.log

/usr/bin/echo "The script run at the following time: $(/usr/bin/date)" > $logfile
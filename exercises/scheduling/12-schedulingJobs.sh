#!/bin/bash

//Logging script triggered date, together with cronJobs.sh
logfile=job_results.log

#echoing a message into the file
echo "The script ran at the following time: $(date)" > $logfile
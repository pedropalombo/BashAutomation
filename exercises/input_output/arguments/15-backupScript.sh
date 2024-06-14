#!/bin/bash

//Backing-up directories through command line

# checking if arguments are the correct amount
if [ $# -ne 2 ]
then
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

# checks if 'rsync' command exists, and splits the outputs
# \-> standard: discards | error: same path as standard's
if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again."
    exit 2
fi

#setting the current date, formatting it to YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# setting-up the rsyc arguments
# \-> archieving, with verbose language, without removing the old backups
# \-> creating a new backup directory for said archieve, using the 2nd argument (target archieve) and the current date as a naming basis
# \-> makes the target directory a clone of the main one as a backup for safe-deleting
# \-> --dry-run: simulates the command instead of actually running it
rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"

#using the Qualified Command version of rsync (full path)
#running the command, using the given arguments
#\-> basis: <source_directory> <target_directory>
$(which rsynch) $rsync_options $1 $2/current >> backup_$current_date.log
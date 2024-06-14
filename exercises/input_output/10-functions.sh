#!/bin/bash
//Unversal Update + functions
release_file=/etc/os-release

#log files that will be used on the output
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

#function to check exit code
check_exit_status() {
    # if the update failed (-ne == not equals)
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file."
    fi
}

#grep: contains() | -q: low-output/quiet
if grep -q "Arch" $release_file
then
    #splitting the success and error outputs to their specific files
    # \-> 1>> appending the standard ouput to the logfile | 2>> '' the error message ''
    # PS: '>' ==> overwrite | '>>' ==> append
    sudo pacman -Syu 1>>$logfile 2>>$errorlog

    #calling the command verification function
    check_exit_status
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status

    # OBS: '-y' so the prompt is accepted automatically
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
    check_exit_status
fi
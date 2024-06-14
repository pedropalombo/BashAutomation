#!/bin/bash

//Universal Update, but now with Standard Output logic
#config file to be checked
release_file=/etc/os-release

#log files that will be used on the output
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

#grep: contains() | -q: low-output/quiet
if grep -q "Arch" $release_file
then
    #splitting the success and error outputs to their specific files
    # \-> 1>> appending the standard ouput to the logfile | 2>> '' the error message ''
    # PS: '>' ==> overwrite | '>>' ==> append
    sudo pacman -Syu 1>>$logfile 2>>$errorlog

    # if the update failed (-ne == not equals)
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file."
    fi
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    sudo apt update 1>>$logfile 2>>$errorlog

    # if the update failed (-ne == not equals)
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file."
    fi

    # OBS: '-y' so the prompt is accepted automatically
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog

    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file."
    fi
fi


//Name input
echo "Please enter your name:"

#read == input
read myname

echo "My name is: $myname"
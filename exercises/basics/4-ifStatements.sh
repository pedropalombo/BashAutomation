#!/bin/bash

mynum=200

//Simple value comparison
#checks if the comparison equals (-eq) 200
 #-> more operators: https://tldp.org/LDP/abs/html/comparison-ops.html
if [ $mynum -eq 200 ]
then
    echo "$mynum equals 200"
else
    echo "$mynum is not 200"
fi #closing if


//Checking for file existance
#checks if a file (-f) called 'myfile', found in the Home directory (~), exists
if [ -f ~/myfile ]
then
    echo "The file exists"
else
    echo "No file found"
fi


//Setting a command
#setting the path for the command to be allocated
command=/usr/bin/htop

#PS: can be changed to 'if command -v $command', if $command == htop
# \-> command: checks if a command (htop) exists (path) through its version check
if [ -f $command ]
then
    echo "$command is available, let's run it!"
else
    echo "$command isn't available, installing it right now..."
    
    #installing the command package <Debian/Ubuntu>
    # \-> apt update: checks from the mirror repo if the directories are updated
    # \-> -y: says "yes" to every prompt 
    sudo apt update && sudo apt install -y htop
fi

#running the newly-added command!
$command
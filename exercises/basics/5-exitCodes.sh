#!/bin/bash

//Most recent command
//...doesnt exist & installation verification
echo $?

package=notexist

sudo apt install $package

# '$?' contains the exit code for the most recent command
echo "The exit code for the package install is: $?"


//...exists & installation verification
package=htop

sudo apt install $package

# exit code == 0 => success!
if [ $? -eq 0 ]
then
    echo "The installation of $package was successful!"
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install."
fi


//Logging the results of the installation
package=notexist

# >> => redirects output into said file
sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful!"
    echo "The new command is available here:"
    which $package
else
    # instead of echoing the message, it logs into the file
    echo "$package failed to install." >> package_install_failure.log
fi


//Checking for errors
directory=/etc

if [ -d $directory ]
then
    echo "The directory $directory exists."
    exit 0
else
    echo "The directory $directory doesn't exist."
    exit 1 #forcing the exit code
fi

echo "The exit code for this script run is $?"
# \-> PS: without forcing the exit code, it will always return '0', because it 'echo' is a command as well
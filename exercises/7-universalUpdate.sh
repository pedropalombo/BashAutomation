#!/bin/bash

//Ultra-simple OS update
# if the host is based on Arch, run the 'pacman' update command
if [ -d /etc/pacman.d ]
then
    sudo pacman -Syu
fi

# if it's Debian/Ubuntu, run 'apt' instead
if [ -d /etc/apt ]
then
    sudo apt update
    sudo apt dist-upgrade
fi


//Using 'release-file' as a basis
release_file=/etc/os-release

#grep: contains() | -q: low-output/quiet
if grep -q "Arch" $release_file
then
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    sudo apt update
    sudo apt dist-upgrade
fi
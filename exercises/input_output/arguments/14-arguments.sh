#!/bin/bash

//Standard input for argument
#getting the array of objects of the inputed path
lines=$(ls -lh $1 | wc -l)

# checking ammount of arguments given on the prompt
if [ $# -ne 1 ]
then
    echo "This script requires exactly one directory path passed to it."
    echo "Please try again."

    #exiting with un unsuccessful code
    exit 1
fi 

#showing the length of the directory
echo "You have $(($lines-1)) objects in the $1 directory."
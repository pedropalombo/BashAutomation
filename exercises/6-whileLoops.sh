#!/bin/bash

//Simple number loop

myvar=1

while [ $myvar -le 10 ]
do
    echo $myvar
    
    #overriding the variable with its previous value +1
    myvar=$(( $myvar +1 ))

    #timer in-between echoes
    sleep 0.5
done


//Listener for file existance
while [ -f ~/testfile ]
do
    echo "As of $(date), the test file exists."
    
    sleep 5
done

echo "As of $(date), the test file has gone missing."

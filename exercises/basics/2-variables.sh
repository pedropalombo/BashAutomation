//PS: Variables can be added through scripts (local & permanent) or cmds (global & temporary), but must be referenced with "$" beforehand
#!/bin/bash

//Simple var association
myname="Pedro"
myage="23-24"

echo "Heyo, my name is $myname"
echo "I'm currently $myage y/o!"

//Storing return values from commands
 -> files=$(command_name)

files=$(ls)

echo "These are the files that were found:"
echo $files

//Using enviroment variables
 -> usually set in CAPS
echo "Your username is $USER"
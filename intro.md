==| Reasons |==
-> used to automate manual codes through pre-coded commands on bash files


==| Prompt Commands |==
# ls (List Storage) => dir
# cd ~ => cd .
# pwd => echoes current directory
# env => all enviroment variables
# which => check for application/command location
# man test => brings out the manual for the test command
# cat => returns the content of file
# tar => zip creation with many extentions (cxvfzjJ)

==| Step-by-step |==

-> check which shell is being used
 # \-> echo $SHELL

-> ... and where it's located
 # \-> which bash

-> open <new> text file
 # \-> nano myscript.sh
  (-> nano: text editor

-> check what's inside it
 # \-> cat myscript.sh

-> flag the file as executable (change its permissions)
 # \-> sudo chmod +x myscript.sh
  (-> chmod +x: adding the "executable" permission to the file
    /-> "ls -l" to check file privileges

-> running the file
 # \-> ./myscript.sh
==| Reasons |==
-> used to automate manual codes through pre-coded commands on bash files


==| Prompt Commands |==
# ls (List Storage) => dir
# cd ~ => cd .
# sudo su - => enter admin mode
# pwd => echoes current directory
# env => all enviroment variables
# which => check for application/command location
# man test => brings out the manual for the test command
# cat => returns the contents of a file
# tar => zip creation with many extentions (cxvfzjJ)
# find <path> => returns all file types based on input
# tail -f <path> => watches real-time changes of a file
# rsync --dry-run => simulates a command before actually running it

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
  (-> chmod +x: adding the "executable" property to the file
    /-> "ls -l" to check file privileges

-> running the file
 # \-> ./myscript.sh
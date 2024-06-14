==| Concept |==
-> scheduling scripts to run at specific times, as to not holt any internal processes that are needed
# -!> PS: "at" command is also needed for this

-> OBS: use Fully Qualified Commands (full path)

-> Scheduling a script trigger
# \-> /usr/bin/at 15:30 -f ./myscript.sh
 (-> the server will run the file 'myscript.sh' at 15h30

-> Checking the queue of pending jobs (scripts)
# \-> atq

-> Removing jobs from queue
# \-> atrm <number>
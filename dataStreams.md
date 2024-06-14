==| Concept |==
-> used for I/O scenarios

==| Standard Output |==
-> Code Number: 1

-> anything that correctly outputs something based on a command ([Exit_Code_0])
 \-> ls ==> <files> ✔
 \-> ls /notexist ==> error message ✘

-> Getting only SO values
# \-> find /etc -type f 2> /dev/null
    (-> find /etc -type f: shows everything inside the "/etc" directory that has a type of "file"
    (-> "2> /dev/null" redirects every return value that doesn't have an exit code of 0 to /dev/null (aka Shadow Realm)


==| Standard Errors |==
-> Code Number: 2

-> output given by a failed command ([Exit_Code_!=_0])

-> Getting only Standard Error values
# \-> find /etc -type f > /dev/null
    (-> "> /dev/null" || "1> /dev/null" sends only exit codes of 0 to /dev/null

-> Redirecting both types of output (messages & errors) to a file
# \-> find /etc -type f &> file.txt

-> Splitting outputs into separate files
# \-> find /etc -type f 1> find_results.txt 2> find_errors.txt


==| Standard Input / Arguments |==
- used for in-prompt data retrieval

-> Using arguments
# \-> ./myscript.sh Montegrapo PheonixFire
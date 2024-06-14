==| How to properly write Bashes |==
  -!> First Line: shebang [#!]
    \-> tells the script which intepreter it's supposed to be using
      (-> #!/bin/bash ==> Bash

  -!> rest: normal commands

==| Where to store scripts |==
  -> use the File System Hierarchy Standard (FHS)
    \-> create a new directory in user's "Local" directory
      (-> ex: /usr/local/bin/update


==| How to write commands when scheduling |==
 -> add the full path for the command, instead of its abreviation
    \-> /usr/bin/echo "This script ran at $(/usr/bin/date)."

  # (-> Reasons: if someone using the same name for a different command, it may cause problems, hence the need for pointing to the specific path
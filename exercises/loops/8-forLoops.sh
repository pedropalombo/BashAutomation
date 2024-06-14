#!/bin/bash

//Number loop

for n in {1..10}
do
    echo "Current number: $n"
    
    sleep 1
done

echo "This is outside the loop."


//Looping through a directory´s files

#going through every file in the 'logfiles' dir that has the .log extension
for file in logfiles/*.log
do
    # tar: zip creation | -c: new archive | -z: compressed | -v: real-time updates are shown | -f: file name
    # \-> tar -extension file_zip file_name
    tar -czvf $file.tar.gz $file
done
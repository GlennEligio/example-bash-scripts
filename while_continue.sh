#!/bin/bash

filetoread=/datafiles/cities.txt

while read linefromfile
do
	if test -d /locations/$linefromfile
	then
		echo "Folder $linefromfile already exist in /locations"
		continue
	fi
	mkdir -p /locations/$linefromfile
done < $filetoread

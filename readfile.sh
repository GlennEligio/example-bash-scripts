#!/bin/bash

filetoread=/datafiles/cities.txt

while read linefromfile
do
	mkdir -p /locations/$linefromfile
done < $filetoread

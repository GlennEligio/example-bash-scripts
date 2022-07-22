#!/bin/bash

clear
totalsize=0
currentfilesize=0

for currentfile in /html/*.html
do
	currentfilesize=`ls -l $currentfile | tr -s " "| cut -f5 -d " "`
	let totalsize=$totalsize+$currentfilesize
	echo $currentfilesize
done
echo
echo "The total space used by HTML files is" $totalsize
echo

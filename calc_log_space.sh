
#!/bin/bash

clear
read -p "Please enter the directory of the log files: " directory
echo

logspace=0

if !(test -d $directory)
then
	echo "No directory exist"
	exit
fi

files=`ls -l /course2 | grep .log`

for logfile in $directory/*.log
do
	currentfilesize=`ls -l $logfile | tr -s " " | cut -f5 -d " "`
	logspace=`echo $logspace+$currentfilesize | bc`
done

echo "The total space used by the .log files is $logspace"

#!/bin/bash

if test $USER = "root"
then
{
 	clear
	echo "You are not root"
	exit
}
else
{
	clear
	echo "You are root"
	exit
}


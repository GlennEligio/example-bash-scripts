#!/bin/bash
clear
echo "Expense allocation"
echo
read -p "Please enter your city: " city

case $city in
	"manila"|"Manila")costcenter="NCR";;
	"cebu"|"Cebu")costcenter="Cebu";;
	*)clear;echo "Invalid city $city";exit;;
esac
clear
echo
echo "Cost center for $city has been set to $costcenter"

#!/bin/bash

clear
echo
read -p "Please enter the ipv4 address: " ip_address

for ((i=1;i<5;i++))
do
	octet[$i]=`echo $ip_address | cut -f$i -d "."`
done

for ((i=1;i<5;i++))
do
	current_bin_value=`bc <<< "obase=2;${octet[$i]}"`
	full_bin_val=$full_bin_val" "$current_bin_value
done
echo
echo "Binary value: " $full_bin_val

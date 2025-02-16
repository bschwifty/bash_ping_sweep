#!/bin/bash

#prompting user to add subnet
echo "Scanning $1.1-254"

#check to see if an argument was entered
if [ "$1" == "" ]
  then
  echo "You didn't add an IP network to scan:"
  echo "Syntax: ./bash_ping_sweep.sh <network>"
else

#scans a class c and prints just the ip
for ip in `seq 1 254` ; do
 ping -w 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":"
 done
fi

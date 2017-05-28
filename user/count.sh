#!/bin/bash

# -----------------------------------------------------------
# evaluate the processing time 
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define loops
loops=10000

echo
echo "basic version:"
time {
	for((i=$loops; i>0; i--))
	do
		userId=$UID
		userName=$(whoami)
		echo "the script runs as user $userName with UNIX id $userId"
	done
} | grep "real"

echo
echo "grep and cut:"
time {
	for((i=$loops; i>0; i--))
	do
		userId=$UID
		userName=$(grep ":$UID:" /etc/passwd | cut -d: -f 1)
		echo "the script runs as user $userName with UNIX id $userId"
	done
} | grep "real"

echo
echo "grep and awk:"
time {
	for((i=$loops; i>0; i--))
	do
		userId=$UID
		userName=$(grep ":$UID:" /etc/passwd | awk -F : '{ print $1 }')
		echo "the script runs as user $userName with UNIX id $userId"
	done
} | grep "real"

echo
echo "awk, only:"
time {
	for((i=$loops; i>0; i--))
	do
		userId=$UID
		userName=$(awk -F : '/:'$userId':/ { print $1 }' /etc/passwd)
		echo "the script runs as user $userName with UNIX id $userId"
	done
} | grep "real"

echo
echo "perl version:"
time {
	for((i=$loops; i>0; i--))
	do
		./getuserid.pl
	done
} | grep "real"

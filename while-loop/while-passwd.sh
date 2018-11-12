#!/bin/bash

# -----------------------------------------------------------
# extract the single columns from /etc/passwd and print them
# in different order
# 
# (C) 2018 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

datafile="/etc/passwd"
FS=":"

while read line
do
    # store field 1
    F1=$(echo $line|cut -d$FS -f1)
    # store field 2
    F2=$(echo $line|cut -d$FS -f6)
    # store field 
    F3=$(echo $line|cut -d$FS -f7)
    echo "User \"$F1\" home directory is $F2 and login shell is $F3"
done < $datafile

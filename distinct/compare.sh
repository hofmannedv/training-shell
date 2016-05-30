#! /bin/bash

# -----------------------------------------------------------
# compare two files
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# return values of the script:
# 0: the two files are similar
# 1: wrong number of parameters (<> 2)
# 2: given file does not exist
# 3: the two files are not similar

# enable verbose output
# set -x

# verify input parameters
if [ $# -ne 2 ]
then
	echo "wrong number of parameters"
	echo "call: $0 file1 file2"
	exit 1
fi

# read input parameters
file1=$1
file2=$2

# validate file1
if [ ! -f $file1 ]
then
	echo "Given file $file1 not found."
	echo "Exiting."
	exit 2
fi

# validate file2
if [ ! -f $file2 ]
then
	echo "Given file $file2 not found."
	echo "Exiting."
	exit 2
fi

# create hash values
hashValue1=$(md5sum $file1 | awk '{ print $1 }')
hashValue2=$(md5sum $file2 | awk '{ print $1 }')

# compare both hash values
if [ $(echo -e "$hashValue1\n$hashValue2" | uniq | wc -l) == 1 ]
then
	echo "$file1 and $file2 are identical"
	# quit with error code 0
	exit 0
fi

# quit with error code 3
echo "$file1 and $file2 are not identical"
exit 3

#!/bin/bash

# -----------------------------------------------------------
# determine the binary files that need a given shared library
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./find-shared-libs.sh library.so
# output: to stdout

# read the shared library as 1st parameter
sofile=$1

# evaluate all the files in /bin
for binfile in $(ls -r /bin/*)
do
	result=$(ldd $binfile | grep $sofile | wc -l)
	if [ $result -gt 0 ]; then
		echo $binfile;
	fi
done

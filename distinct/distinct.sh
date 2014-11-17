#! /bin/bash

# -----------------------------------------------------------
# create file differences
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# enable verbose output
# set -x

# verify input parameters
if [ $# -ne 3 ]
then
	echo "wrong number of parameters"
	echo "call: $0 inputFile patternFile outputFile"
	exit 1
fi

# read input parameters
inputFile=$1
patternFile=$2
outputFile=$3

# validate input file
if [ ! -f $inputFile ]
then
	echo "given input file $inputFile not found."
	exit 2
fi

# validate pattern file
if [ ! -f $patternFile ]
then
	echo "given pattern file $patterFile not found."
	exit 2
fi

# create output file
touch outputFile

# take every single pattern ...
while read pattern
do
	# work on the input file
	# and figure out if pattern is in input file
	# using grep
	r=`grep $pattern $inputFile`
	if [ $? -eq 1 ] 
	then
		echo $pattern >> $outputFile
	fi
done < $patternFile

# quit
exit 0

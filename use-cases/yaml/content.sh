#!/bin/bash

# -----------------------------------------------------------
# extract the content from a yaml file
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./content.sh file.yaml
# output: to stdout

# check for command-line parameters
if [[ $# -eq 0 ]]
then
	echo "filename as command-line argument missing"
	exit 1
fi

# filename as command-line parameter 1
filename="$1"

# check for readable filename
if [[ -r "$filename" ]] 
then
	# find end of header
	headerEnd=$(grep -m 1 -nE "^\.\.\.$" $filename | cut -d: -f 1)

	# calculate content start
	contentStart=$(expr $headerEnd + 1)

	# output file content
	tail --lines=+$contentStart $filename
else
	echo "cannot read from given filename: $filename"
	exit 2
fi

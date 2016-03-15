#!/bin/bash

# -----------------------------------------------------------
# extract the header from a yaml file
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./frontmatter.sh file.yaml
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
	# find begin of header
	headerStart=$(grep -m 1 -nE "^---$" $filename | cut -d: -f 1)

	# find end of header
	headerEnd=$(grep -m 1 -nE "^\.\.\.$" $filename | cut -d: -f 1)

	# calculate length of header
	numberLines=$(expr $headerEnd - $headerStart + 1)

	# output header
	tail --lines=+$headerStart $filename | head --lines=$numberLines
else
	echo "cannot read from given filename: $filename"
	exit 2
fi

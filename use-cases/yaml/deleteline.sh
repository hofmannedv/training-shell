#!/bin/bash

# -----------------------------------------------------------
# delete line from a yaml header having the given variable name
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./deleteline.sh variable file.yaml
# output: to stdout

# check for command-line parameters
if [[ $# -lt 2 ]]
then
	echo "either variable name, or filename as command-line arguments missing"
	exit 1
fi

# retrieve variable name from command-line
varName="$1"

# retrieve file name from command-line
filename="$2"

# remove line with varName from yaml header, and output content
./frontmatter.sh "$filename" | grep -v -E "^$varName" && ./content.sh "$filename"


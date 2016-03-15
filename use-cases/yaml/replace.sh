#!/bin/bash

# -----------------------------------------------------------
# replace a stored value in a yaml header having the given variable name
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./replace.sh variable newValue file.yaml
# output: to stdout

# check for command-line parameters
if [[ $# -lt 3 ]]
then
	echo "either variable name, new value, or filename as command-line arguments missing"
	exit 1
fi

# retrieve variable name from command-line
varName="$1"

# retrieve new value from command-line
newValue="'$2'"

# retrieve file name from command-line
filename="$3"

# remove line with varName from yaml header, and output content
./frontmatter.sh "$filename" | sed 's/'"$varName"'.*/'"$varName"': '"$newValue"'/' && ./content.sh "$filename"


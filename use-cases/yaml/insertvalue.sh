#!/bin/bash

# -----------------------------------------------------------
# insert an new value to an existing yaml header entry having 
# the given variable name
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./insert.sh variable newValue file.yaml
# output: to stdout

# check for command-line parameters
if [[ $# -lt 3 ]]
then
	echo "either variable name, variable value, or filename as command-line arguments missing"
	exit 1
fi

# retrieve variable name from command-line
varName="$1"

# retrieve value from command-line
newValue="$2"

# retrieve file name from command-line
filename="$3"

# retrieve yaml header without desired line, update, and output
header=$(./frontmatter.sh "$filename")
echo "$header" | sed -e "s/$varName: ''/$varName: '$newValue'/" -e t -e "s/$varName: '\(.*\)'/$varName: '\1, $newValue'/"

# output content of the yaml file
./content.sh "$filename"

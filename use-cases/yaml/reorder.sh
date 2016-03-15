#!/bin/bash

# -----------------------------------------------------------
# reorder lines from a yaml header having the given variable name
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./reorder.sh variable position file.yaml
# output: to stdout

# check for command-line parameters
if [[ $# -lt 3 ]]
then
	echo "either variable name, position, or filename as command-line arguments missing"
	exit 1
fi

# retrieve variable name from command-line
varName="$1"

# retrieve position from command-line
position="$2"

# retrieve file name from command-line
filename="$3"

# retrieve line with varName from yaml header
line=$(./frontmatter.sh "$filename" | grep -E "^$varName")

# retrieve yaml header without desired line
newHeader=$(./frontmatter.sh "$filename" | grep -vE "^$varName")
echo "$newHeader" | head --lines=$position

# output desired line
echo $line

# output remaining yaml header
echo "$newHeader" | tail --lines=+$(expr $position + 1)

# output content of the yaml file
./content.sh "$filename"

#!/bin/bash

# -----------------------------------------------------------
# insert a line to an existing yaml header having the given variable name
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./insert.sh variable newValue position file.yaml
# output: to stdout

# check for command-line parameters
if [[ $# -lt 4 ]]
then
	echo "either variable name, variable value, position, or filename as command-line arguments missing"
	exit 1
fi

# retrieve variable name from command-line
varName="$1"

# retrieve value from command-line
newValue="$2"

# retrieve position from command-line
position="$3"

# retrieve file name from command-line
filename="$4"

# define new entry
line="$varName: '$newValue'"

# retrieve yaml header without desired line
header=$(./frontmatter.sh "$filename")
echo "$header" | head --lines=$position

# output desired line
echo $line

# output remaining yaml header
echo "$header" | tail --lines=+$(expr $position + 1)

# output content of the yaml file
./content.sh "$filename"

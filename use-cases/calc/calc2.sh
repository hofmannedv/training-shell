#! /bin/bash

# -----------------------------------------------------------
# calculate the total for the given parameters from the 
# command-line
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# initialize total
gesamtsumme=0

# read from the parameter list as long as possible
while [[ $# > 0 ]]
do
	# output parameter #1
	echo "Parameter: $1"

	# validate parameter for being a digit
	echo $1 | grep -q "^-*[0-9]\+$"
	if [ $? -ne 0 ]
	then
		echo "Parameter is not a digit. Skipping."
	else
		gesamtsumme=$(expr $gesamtsumme + $1)
	fi

	shift
done

# output total
echo "Gesamt: $gesamtsumme"

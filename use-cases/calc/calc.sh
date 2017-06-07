#!/bin/bash

# -----------------------------------------------------------
# calculate the total for two parameters from the command-line
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# verifiy the number of parameters
if [ $# -ne 2 ] 
then
	echo "Two parameters expected. Exiting."
	exit 1
fi

# check for digits (parameter #1)
echo $1 | grep -q "^-*[0-9]\+$"
if [ $? -ne 0 ]
then
	echo "Parameter #1 is not a digit. Exiting."
	exit 2
fi

# check for digits (parameter #2)
echo $2 | grep -q "^-*[0-9]\+$"
if [ $? -ne 0 ]
then
	echo "Parameter #2 is not a digit. Exiting."
	exit 2
fi

# calculate the total using expr
operator1=$1
operator2=$2
expr $operator1 + $operator2

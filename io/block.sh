#!/bin/bash

# -----------------------------------------------------------
# input data for a code block
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define data file
dataFile=/etc/fstab

{
read line1		# read first line of the data file
read line2		# read second line of the data file
} < $dataFile

# output data
echo "line 1: $line1"
echo "line 2: $line2"

exit 0

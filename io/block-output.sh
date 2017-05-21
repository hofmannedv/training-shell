#!/bin/bash

# -----------------------------------------------------------
# redirect the output of a code block to a file
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define output file
outputFile=/tmp/example

# to stdout
echo "line 1"

# redirected to the output file
{
echo "line 2"
echo "line 3"
} > $outputFile

# to stdout
echo "line 4"

exit 0

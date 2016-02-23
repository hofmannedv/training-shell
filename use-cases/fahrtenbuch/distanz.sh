#!/bin/bash

# -----------------------------------------------------------
# calculate the total distance from a driver's logbook
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

cat fahrtenbuch.txt | tr -s '\t' ':'| tail --lines=+2 | awk -F : '{print $1 * $4}' | tr '\n' '+' | sed 's/+$/+0\n/' | bc

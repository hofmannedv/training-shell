#! /bin/bash

# -----------------------------------------------------------
# output the lines that contain the today's date
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./find-by-pattern.sh textfile
# output: lines that contain the pattern

DATE=$(date +%Y-%m-%d)
grep $DATE "$1"

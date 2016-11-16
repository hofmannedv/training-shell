#!/bin/bash

# -----------------------------------------------------------
# check email addresses for being correct
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Thanks to Ralf Neumann, Hamburg.
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./grep-mailadresses.sh textfile
# output: valid email addresses to stdout

cat $1 | grep --color -o -i -E "(([a-z0-9_\-]+(\.)?)+[a-z0-9_\-]+)@([a-z0-9_\-\.]+)\.[a-z]+" | grep --color -o -i -E ".*\.[a-z]{1,3}$"

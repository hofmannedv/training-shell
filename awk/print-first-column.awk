# -----------------------------------------------------------
# print the first column of each line
# column separator is ":"
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

BEGIN { FS=":" }
{ print $1 }

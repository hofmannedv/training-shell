# -----------------------------------------------------------
# print the last column of each line
# column separator is ":"
#o
# (C) 2024 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

BEGIN { FS=":" }
{ print $NF }

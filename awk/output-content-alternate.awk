# -----------------------------------------------------------
# output the lines in alternate order
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

{getline i; print i} $0 { print }

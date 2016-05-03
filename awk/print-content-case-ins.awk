# -----------------------------------------------------------
# print the lines matching a certain pattern case-insensitive
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

BEGIN { IGNORECASE=1 }
/banana/ { print }

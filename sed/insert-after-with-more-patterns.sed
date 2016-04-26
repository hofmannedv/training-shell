# -----------------------------------------------------------
# insert a line with 4x+ after each line that has one of the 
# two patterns "2016-01-11", or "2016-01-12". This works for 
# both GNU sed, and # BSD sed.
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
#
# Additions for BSD sed by Thomas Osterried <tos@osterried.it>
# -----------------------------------------------------------

/2016-01-10/a\
++++ 2016-01-11 ++++
/2016-01-11/a\
++++ 2016-01-12 ++++

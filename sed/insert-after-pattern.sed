# -----------------------------------------------------------
# insert a line with 4x+ after each line that has the pattern
# "2016-01-16". This works for both GNU sed, and BSD sed.
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

/2016-01-10/a\
++++

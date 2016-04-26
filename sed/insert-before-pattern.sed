# -----------------------------------------------------------
# insert a line with 4x+ before each line that has the pattern
# "fho logged in"
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
#
# Additions for BSD sed by Thomas Osterried <tos@osterried.it>
# -----------------------------------------------------------

/fho logged in/i\
++ fho ++

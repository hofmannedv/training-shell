# -----------------------------------------------------------
# replace a date into ISO formatted date
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# based on an idea from Elmar Heeb <elmar@heebs.ch>
#
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

s/([[:digit:]]{1,2})-([[:digit:]]{1,2})-([[:digit:]]{4})/\3-\2-\1/p

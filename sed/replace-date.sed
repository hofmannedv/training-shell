# -----------------------------------------------------------
# replace a date into ISO formatted date
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# based on an idea from Elmar Heeb <elmar@heebs.ch>
#
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# example call: 
# $ echo "1-7-2016" | sed -nr -f replace-date.sed

s/([[:digit:]]{1,2})-([[:digit:]]{1,2})-([[:digit:]]{4})/\3-\2-\1/g
s/-([[:digit:]])-/-0\1-/g
s/-([[:digit:]])$/-0\1/p

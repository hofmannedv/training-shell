# -----------------------------------------------------------
# characterize the content -- line, character, or number
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

/[0-9]+/ { print "That is an integer." }
/[A-z]+/ { print "This is a string." }
/^$/ { print "This is an empty line." }


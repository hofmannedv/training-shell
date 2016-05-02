# -----------------------------------------------------------
# sum column 1 and 3
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

BEGIN { FS="\t+" }
{ total += $1 * $3 }
END { printf "Gesamt: %.2f\n", total }

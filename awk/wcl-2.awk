# -----------------------------------------------------------
# count the number of lines per file
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

END { printf "Anzahl Zeilen: %d\n", NR }

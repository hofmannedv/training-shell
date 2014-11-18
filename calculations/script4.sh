#! /bin/bash

# -----------------------------------------------------------
# add two values, and output its sum
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# zwei Summanden
betrag1=100
betrag2=50

# ausrechnen des Gesamtbetrags
summe=`expr $betrag1 + $betrag2`

# ausgeben der Summe
echo "Summe: $betrag1 + $betrag2 = $summe"

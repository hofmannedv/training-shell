#! /bin/bash

# -----------------------------------------------------------
# add two values as given on the commandline as parameters, 
# and output its sum
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# Name des aufgerufenen Skripts
echo "Skriptname: $0"

# Anzahl der übermittelten Parameter
echo "Anzahl Parameter: $#"

# übermittelte Parameter
echo "Übermittelte Parameter: $*"

# werte als Parameter 1 bis 3
betrag1=$1
betrag2=$2
betrag3=$3

# Addition (komplexe Berechnung ...)
summe=$(( $betrag1 + $betrag2 + $betrag3 ))

# Ausgabe der Gesamtsumme
echo "Gesamtsumme: $betrag1 + $betrag2 + $betrag3 = $summe"

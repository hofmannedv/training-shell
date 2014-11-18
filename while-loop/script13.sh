#!/bin/bash

# -----------------------------------------------------------
# demonstrates the while loop and reading from stdin,
# and post-processing using cut and sort
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# Schleife beginnen
while read zeile
do
	# Ausgabe der eingelesenen Zeile
	echo "Eingelesen: $zeile"
	# einlesen von Parameter 1, 
	# ausschneiden des zweiten Feldes von der Ausgabe,
	# alphabetisch aufsteigend sortieren der Feldliste
done < $1 | cut -d":" -f2 | sort

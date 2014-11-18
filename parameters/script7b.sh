#! /bin/bash

# -----------------------------------------------------------
# display the script parameters, and moving them using shift
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

# auslesen der Parameter, so lang diese da sind
while [[ $# > 0 ]]
do
	echo "Parameter 1 = $1"
	
	# verschieben der Parameter um eins nach links
	shift
done


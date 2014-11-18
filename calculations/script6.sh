#! /bin/bash

# -----------------------------------------------------------
# output the sum based on the values of the script parameters
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

# Gesamtsumme festlegen und initialisieren
summe=0

# Prüfen, ob überhaupt Parameter da sind
if [ $# -gt 0 ]
then

  # Schleife zur Ausgabe der Parameter
  for i in $*
    do
    # mach was und addiere zur Gesamtsumme
    summe=`expr $summe + $i`
    echo "Parameter: $i"
    done

fi

# Gesamtsumme ausgeben
echo "Gesamtsumme: $summe"

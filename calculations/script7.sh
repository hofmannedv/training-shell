#! /bin/bash

# Name des aufgerufenen Skripts
echo "Skriptname: $0"

# Anzahl der übermittelten Parameter
echo "Anzahl Parameter: $#"

# übermittelte Parameter
echo "Übermittelte Parameter: $*"

# Gesamtsumme festlegen und initialisieren
summe=0

# Schleife zur Ausgabe der Parameter
for i in $*
 do
  # mach was und addiere zur Gesamtsumme
  summe=`expr $summe + $i`
  echo "Parameter: $i"
 done

# Gesamtsumme ausgeben
echo "Gesamtsumme: $summe"

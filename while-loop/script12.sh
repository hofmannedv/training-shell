#!/bin/bash

# Schleife beginnen
while read zeile
  do
    echo "Eingelesen: $zeile"

    # prüfen auf exit, quit und raus
    abbruch=`echo $zeile | egrep '^(exit|quit|raus)$'`
    if [ $? -eq 0 ] 
    then
		echo "Schleife beendet"
		exit
    fi
  done

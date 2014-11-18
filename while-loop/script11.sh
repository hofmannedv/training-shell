#!/bin/bash

# -----------------------------------------------------------
# demonstrates the while loop and reading from stdin
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# Schleife beginnen
while read zeile
  do
    echo "Eingelesen: $zeile"

    # prüfen auf exit, quit und raus
    if [ $zeile = "exit" ] || [ $zeile = "quit" ] || [ $zeile = "raus" ]
    then
		echo "Schleife beendet"
		exit
    fi
  done

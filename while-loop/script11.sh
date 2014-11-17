#!/bin/bash

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

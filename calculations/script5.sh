#! /bin/bash

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
expr $betrag1 + $betrag2 + $betrag3

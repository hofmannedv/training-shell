#! /bin/bash

# -----------------------------------------------------------
# display the usage of a value selection using case statements
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

anfrage=$1
echo "Anfrage: $anfrage"

case $anfrage in 
  "Focus")
   echo "Farbe: rot"
   echo "PS: 55"
   kview focus.jpeg
  ;;
  "S-Klasse")
   echo "Farbe: grau"
   echo "PS: 320"
   kview s-klasse.jpeg
  ;;
  *)
   echo "Farbe: blau"
   echo "PS: 17"
   kview ente.jpg
   ;;
esac


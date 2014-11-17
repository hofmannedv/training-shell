#! /bin/bash

# Name des aufgerufenen Skripts
echo "Skriptname: $0"

# Anzahl der übermittelten Parameter
echo "Anzahl Parameter: $#"

# übermittelte Parameter
echo "Übermittelte Parameter: $*"

anfrage=$1

if [ $anfrage = "Focus" ]
then
   echo "$anfrage"
   echo "Farbe: rot"
   echo "PS: 55"
elif [ $anfrage = "S-Klasse" ]
then
   echo "Farbe: grau"
   echo "PS: 320"
else
   echo "alles andere:"
   echo "Farbe: blau"
   echo "PS: 17"
fi



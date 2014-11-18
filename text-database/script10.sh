#! /bin/bash
# set -x

# -----------------------------------------------------------
# demonstrates reading from a text file
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# Name des aufgerufenen Skripts
echo "Skriptname: $0"

# Anzahl der übermittelten Parameter
echo "Anzahl Parameter: $#"

# Parameterüberprüfung durchführen
# Anzahl korrekt?
if [ $# -eq 2 ] 
then

  # übermittelte Parameter
  echo "Übermittelte Parameter: $*"
  
  anfrage=$1
  echo "Anfrage: $anfrage"

  # Datenbankdatei im 2. Parameter des Skripts
  datenbankdatei=$2

  # Prüfen, ob Datenbankdatei vorhanden ist
  if [ -f $datenbankdatei ]
  then

    anzahlsuchtreffer=`grep -c $anfrage $datenbankdatei`
    if [ $anzahlsuchtreffer = 0 ] 
    then 
       echo "kein Suchtreffer"
    else
       datenbankzeile=`grep $anfrage $datenbankdatei`

       name=`echo $datenbankzeile | cut -d":" -f1`
       farbe=`echo $datenbankzeile | cut -d":" -f2`
       ps=`echo $datenbankzeile | cut -d":" -f3`
       bilddatei=`echo $datenbankzeile | cut -d":" -f4`

       echo "Datenbankeintrag: $datenbankzeile"
       echo "Fahrzeugname    : $name"
       echo "Farbe           : $farbe"
       echo "Leistung        : $ps"
       echo "Bilddatei       : $bilddatei"

       # Bild anzeigen
       kview $bilddatei 2> /dev/null
    fi
  else
    # Fehlermeldung ausgeben
    echo "angegebene Datenbankdatei $datenbankdatei nicht gefunden"

  fi

else
  echo "Falsche Anzahl Parameter: $#"
  echo "Aufruf: $0 Suchbegriff Datenbankdatei"
fi

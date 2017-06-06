#!/bin/bash

# -----------------------------------------------------------
# demonstrates the while loop to detect the availability of a host
#o
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define date
datum=$(date +%F)

# define date-specific logfile name
logfile="logfile-${datum}-rz1"

# read vom stdin line by line
while read zeile
do
	# ping the host given from stdin
	ping -c 1 $zeile > /dev/null

	# evaluate the ping exit code
	if [ "$?" = "0" ]
	then
		echo "$zeile is available" >> $logfile
	else
		echo "$zeile is not available" >> $logfile
	fi
done

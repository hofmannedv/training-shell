#!/bin/bash

# -----------------------------------------------------------
# output the user id, and the user name who invoked the script
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

userId=$UID
userName=$(whoami)

# alternative ways to derive the user name from the id:
# - grep and cut
# userName=$(grep ":$UID:" /etc/passwd | cut -d: -f 1)
#
# - grep and awk
# userName=$(grep ":$UID:" /etc/passwd | awk -F : '{ print $1 }')
#
# - awk, only
# userName=$(awk -F : '/:'$userId':/ { print $1 }' /etc/passwd)

echo "the script runs as user $userName with UNIX id $userId"

#! /bin/bash

# -----------------------------------------------------------
# demonstrates the usage of xargs
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# using a for loop
for filename in $(find . -name "*.sh")
do
	ls -lah $filename
done

# be more efficient: combining find and xargs
find . -name "*.sh" -print | xargs ls -lah

# alternative writing: using a specific find argument
# order: find where-to-look criteria what-to-do
find . -name "*.sh" -exec ls -lah '{}' \+

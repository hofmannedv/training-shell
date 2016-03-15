#!/bin/bash

# -----------------------------------------------------------
# update the yaml header
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# call: ./run.sh
# output: to stdout, and redirected to the d*.yml file

# display the yaml header stored in test.yml
./frontmatter.sh test.yml

# delete line that begins with the specific word "export:"
./deleteline.sh "export" test.yml > d1.yml

# reorder lines. Move "title" to the first place
./reorder.sh "title" 1 d1.yml > d2.yml

# replace the value of author from 'aaaa' to 'xxxx'
./replace.sh "author" "xxxx" d2.yml > d3.yml

# insert line with the specific line "categories:" as 2nd entry
./insert.sh "categories" "" 2 d3.yml > d4.yml

# insert entry "categories:" 'news'
./insertvalue.sh "categories" "news" d4.yml > d5.yml

# insert entry "categories:" 'sport'
./insertvalue.sh "categories" "sport" d5.yml > d6.yml


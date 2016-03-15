#!/bin/bash

# -----------------------------------------------------------
# convert to markdown based on existing html files
#
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# convert to markdown
find . -name \*.html -type f | sed 's/\.html$//' | xargs -I {} pandoc -f html -t markdown -s -o "{}.md" "{}.html"

# remove all the old html files
find . -name \*.html -type f -delete

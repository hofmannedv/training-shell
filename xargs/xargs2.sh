#! /bin/bash

# -----------------------------------------------------------
# demonstrates the usage of xargs
#o
# (C) 2014 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# finding all *.mp3 files from starting in directory audio, 
# and getting its file type
# no matter whether the file contains spaces or not
# the option -d specifies the desired delimiter

find audio -name '*.mp3*' | xargs -d '\n' file

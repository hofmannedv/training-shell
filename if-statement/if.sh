#! /bin/bash

# -----------------------------------------------------------
# demonstrates how to evaluate the return value of a command
#o
# (C) 2018 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

if echo "Hello, World!" | grep -i "hello"
then
    echo "hello found"
else
    echo "hello not found"
fi

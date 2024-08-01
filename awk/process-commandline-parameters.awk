# -----------------------------------------------------------
# Process, and print commandline parameters
#o
# (C) 2024 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

BEGIN { 
    for(i = 1; i < ARGC; i++) 
        print ARGV[i]
}

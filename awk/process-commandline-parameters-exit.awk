# -----------------------------------------------------------
# Process, and print commandline parameters, and set 
# corresponding exit code
#o
# (C) 2024 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

BEGIN { 
    printf "commandline parameters: " ARGC - 1 "\n";
    if (ARGC < 2) {
        print "Exiting with 1.";
        exit 1;
    } else {
        for(i = 1; i < ARGC; i++) 
            printf "Parameter %s: %s\n", i, ARGV[i];
        print "Exiting with 0.";
    }
}

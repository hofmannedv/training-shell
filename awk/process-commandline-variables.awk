# -----------------------------------------------------------
# Process pre-set variables given on the commandline
#o
# (C) 2024 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# expect a digit as a variable given as a commandline parameter
# 
# awk -v number=10 -f process-commandline-variables.awk

BEGIN { 
if (number % 2 == 0)
    printf "%d is an even number.\n",number;
else 
    printf "%d is an odd number.\n",number;
}

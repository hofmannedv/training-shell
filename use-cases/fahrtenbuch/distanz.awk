BEGIN { FS="\t+" }
{ gesamt += $1 * $4 }
END {printf "Gesamt: %d km\n", gesamt}

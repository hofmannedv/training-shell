# -----------------------------------------------------------
# output the matches and its positions line by line
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

BEGIN { pattern="[a-z]+e$" }

{
	words = split($0, term)
	position = 1
	while (position <= words) {
		currentWord = term[position]
		where = match(currentWord, pattern)
		if (where != 0) printf("line %3i:%3i:%s\n", $NR+1, position, currentWord)
		
		position++
	}
}

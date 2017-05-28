#!/usr/bin/perl -w

# -----------------------------------------------------------
# output the user id, and the user name who invoked the script
#
# (C) 2017 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# retrieve user name via environment variable $LOGNAME
$username=$ENV{'LOGNAME'};

# read /etc/passwd
open(FH, "/etc/passwd") || die "Cannot open /etc/passwd: $!";
{
	while(<FH>) {
		# look for the user name
		if (m/^${username}:/) {
			@fields=split(/:/, $_);
			
			# extract user id
			$uid=$fields[2];
			
			print "the script runs as user $username with UNIX id $uid\n";
		}
	}
}
close(FH);

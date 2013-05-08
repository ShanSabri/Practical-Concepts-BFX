#!/usr/bin/perl
use strict;
use warnings;

# Gathering User Input
print "Input file: ";
chomp (my $input = <STDIN>);

# Opening file
open(IN, "$input") || die "Can't open $input : $!";

# The code below will loop through each line within the
# input file and run glast.pl. The code also includes
# a counter to keep track of the number of output files.

my $count = 1;
foreach my $line (<IN>) {
	chomp $line;
	`perl glast.pl $line`;	
	$line =~ s/.seq/.glast/g;
	print "$count - Output was placed in $line\n"; 
	$count++;
}

# Closing filehandle
close IN;

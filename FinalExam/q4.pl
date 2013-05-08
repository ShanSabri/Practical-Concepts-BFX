#!/usr/bin/perl
use strict;
use warnings;

# Gathering User Input
print "BLASTN input file: ";
chomp (my $input = <STDIN>);

# Opening File
open(IN, "$input") || die "Can't open $input : $!";

# The code below will function to parse the user input
# data using regex. In order to print out only 5 records, 
# a counter is implemented. 
my $count = 0;
while (<IN>){
	print "Query Name: " . $1 . "\n" if /Query = (.+)/;    
	print "Query Length: " . $1 . "\n" if /(\d+) letters/; 
	if ($count < 5){
		print "Accession No: " . $1 . "\n" if /^>\w+:(\w+)/; 
		print "\tLength: " . $1 . "\n" if /Length = (\d+)/;  
		print "\tScore: " . $1 . "\n" if /Score = (\d+)/; 
		$count ++ if /Score = /;
	}
}

# Closing filehandle
close IN;

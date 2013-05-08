#!/usr/bin/perl
use strict;
use warnings;

# Gathering User Inputs
print "Input: ";
chomp (my $input = <STDIN>);
print "Dilutiom Factor: ";
chomp (my $df = <STDIN>);
print "Output: ";
chomp (my $output = <STDIN>);

# Opening Files 
open(IN, "$input") || die "Can't open $input : $!";
open(OUT, ">$output") || die "Can't open $output : $!";

# Output file header
print OUT "UV RNA absorbance (OD260) --> Concentration of RNA\n" . 
	    "Using data from $input\nDilution Factor: $df\n\n";
	
# The code below will read in the user input file and place each
# line into an array then convert each value of each line in the array to 
# concentration. These values are then pushed onto another array which is then 
# printed out to contain 12 # elements/line, joined by tabs. 

while(my $line = <IN>){
	chomp $line;
	my @line = split(/\s+/, $line);
	my @concen = ();
	foreach my $absorb (@line){
		my $concen = $df * $absorb * 50;
		push (@concen, $concen);
	}
	while (my @output = splice @concen, 0, 12) {
        print OUT join("\t", @output), "\n"; 
	}
}

# Closing filehandles
close IN;
close OUT;


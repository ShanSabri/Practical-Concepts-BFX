#!/usr/bin/perl 

use warnings;
use strict;

print "Input file: "; chomp(my $inputFile = <STDIN>);
print "Output file: ";chomp(my $outputFile = <STDIN>);
print "Search pattern: "; chomp(my $searchPattern = <STDIN>);
print "Replacement: "; chomp(my $replacement = <STDIN>);

open(IN, $inputFile) or die "Failed to open $inputFile!\n";
open(OUT,">$outputFile") or die "Failed to open $outputFile!\n";

while (<IN>) {  
    s/$searchPattern/$replacement/g; 
    print OUT $_; 
}

close(IN);
close(OUT);


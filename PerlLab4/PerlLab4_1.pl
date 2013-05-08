#!/usr/bin/perl 

use warnings;
use strict;

use PerlLab4_1;

my $dna = 'TTATTTTTTTGTTTTTTTTACGTACGTACGTACGTGACGACGTACGTA';

print "Length: \t" . Length($dna) . "\n";
print "GC%: \t" . GC_percent($dna) . "\n";
print "Poly-T: \t" . Poly_T($dna) . "\n";


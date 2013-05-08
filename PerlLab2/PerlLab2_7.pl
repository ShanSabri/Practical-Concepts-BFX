#!/usr/bin/perl
 

use warnings;
use strict;

print "File: "; chomp(my $file = <STDIN>);
open(IN, "$file") or die "Failed to open $file!\n";
while (<IN>) {print "$file: $_";}

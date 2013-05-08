#!/usr/bin/perl 

use warnings;
use strict;

sub Sum{
	my $sum = 0;
	foreach my $argument (@_) {$sum = $sum + $argument;}
	return $sum;
}

my $result = Sum (1, 2, 3);
print "SUM = $result\n";

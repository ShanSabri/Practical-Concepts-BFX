#!/usr/bin/perl 

use warnings;
use strict;

while (defined($_ = <ARGV>)) {
    print "Before: " . $_;
	$_ =~ tr/[A-Z]/[a-z]/;
	$_ =~ s/^([a-z])/\u$1/;
	print "After: " . $_;
}

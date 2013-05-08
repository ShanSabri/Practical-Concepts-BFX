#!/usr/bin/perl 

use warnings;
use strict;

print "Enter a sentence: ";
my $sentence = <STDIN>;
# my $sentence = "Long green snake";
print "Before: " . $sentence . "\n";
$sentence =~ (s/(\w+) (\w+)/$2 $1/i);
print "After: " . $sentence . "\n";



















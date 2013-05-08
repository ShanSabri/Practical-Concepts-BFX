#!/usr/bin/perl 
use warnings;
use strict;

my @array = ('A', 'B', 'C', 'D', 'E');
my $first = shift(@array);
my $last = pop(@array);
print "First element in array: $first\n";
print "Last element in array: $last\n";

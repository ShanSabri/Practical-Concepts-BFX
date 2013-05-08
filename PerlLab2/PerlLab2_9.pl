#!/usr/bin/perl 

use warnings;
use strict;

my %hash = qw(Red Apple Green Leaves Blue Ocean);

print "Key: "; chomp(my $word = <STDIN>);
print "Value: $hash{$word}\n";

#!/usr/bin/perl 

use warnings;
use strict;

my %hash = qw(Red Apple Green Leaves Blue Ocean);

print "$hash{$_}\n" foreach (keys %hash);

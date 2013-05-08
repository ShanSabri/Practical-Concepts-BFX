#!/usr/bin/perl
use warnings;
use strict;

print "Please input radius: ";
my $rad = <STDIN>;
chomp $rad;

my $pi = 3.14159;
my $cir = 2 * $pi * $rad;

print "Circle circumference: $cir\n";


#!/usr/bin/perl 

use warnings;
use strict;

my ($who, $whenIP, $where) = '';

open(IN, 'users.txt' ) or die "Failed to open users.txt!\n";

while(<IN>) { 
     ($who, $where, $whenIP) = split(/\s+/, $_, 3);
     print "$who on $where at $whenIP\n";
}

close IN;
exit;















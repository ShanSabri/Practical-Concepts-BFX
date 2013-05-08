#!/usr/bin/perl 

use warnings;
use strict;

open(IN, '3.txt' ) or die "Failed to open 3.txt!\n";

my @lines = <IN>;
foreach my $line (@lines) {
    print $line if ($line =~ m/[aeiouy][aeiouy]/i);
}

close IN;
exit;



























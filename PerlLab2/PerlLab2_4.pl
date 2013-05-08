#!/usr/bin/perl 

use warnings;
use strict;

my @list = (8, 3, 0, 2, 12, 0);
foreach my $element (@list){
    if ($element == 0){
        print "Found 0\n";
        next;
    }
    print "48/$element = " . 48/$element . "\n";
}


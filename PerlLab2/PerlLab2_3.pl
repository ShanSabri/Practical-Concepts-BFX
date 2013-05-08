#!/usr/bin/perl 

use warnings;
use strict;

print "Num: ";
chomp(my $num = <STDIN>);

my $sum = 0;
while ($num != 999) {
    $sum = $sum + $num;
    print "Num: ";
    chomp($num = <STDIN>);
}
print "Sum: $sum\n";


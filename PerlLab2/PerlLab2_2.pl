#!/usr/bin/perl 

use warnings;
use strict;

print "Temp? ";
chomp(my $temp = <STDIN>);

print "Too hot\n" if ($temp > 75);
print "Too cold\n" if ($temp < 68); 
print "Just right!\n" if ($temp > 68 && $temp < 75);

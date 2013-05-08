#!/usr/bin/perl 

use warnings;
use strict;

print "Enter string: ";
chomp (my $string = <STDIN>);

print "(A) match\n" if $string =~ /a+b*/;
print "(B) match\n" if $string =~ /\\*\**/;
print "(C) match\n" if $string =~ /($string){3}/;
print "(D) match\n" if $string =~ /(.|\n){5}/;
print "(E) match\n" if $string =~ /(^|\s)(\s+)(\s+\2)+(\s|$)/;


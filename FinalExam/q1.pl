#!/usr/bin/perl
use strict;
use warnings;

print "Temperate type (F/C): ";
chomp (my $type = <STDIN>);
if ($type =~ /^(F|C)/i) {
	print "Temperate: ";
	chomp (my $temp = <STDIN>);
	if ($temp =~ /^[+-]?\d*\.?\d+/){
		my $cel = ($temp - 32) * 5/9;
		my $fah = (9 * $temp/5) + 32;
		print "$temp degrees $type = " . $cel . " degrees C\n" if ($type =~ /^(F)/i);
		print "$temp degrees $type = " . $fah . " degrees F\n" if ($type =~ /^(C)/i);
	}else{
		print "Invalid temp!\n";
	}
}else{
	print "Invalid type!\n";
}

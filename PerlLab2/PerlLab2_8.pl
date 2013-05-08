#!/usr/bin/perl 

use warnings;
use strict;

sub SayHello{
	my $name = shift; chomp $name;
	print "Hello, $name\n";
}

SayHello("Shan Sabri");

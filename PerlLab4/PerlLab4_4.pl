#!/usr/bin/perl 

use warnings;
use strict;

$ARGV[0] or die "* Need Argument *\n";
my $user = $ARGV[0];
my @status = `ps -aux`;

while(my $process = shift(@status)){
      print $process if $process =~ /^($user)/;
}



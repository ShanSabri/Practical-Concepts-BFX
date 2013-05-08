#!/usr/bin/perl -w
#WLAST simulator - do NOT alter ANY lines in this file!!!!
#MUST copy glast.pl and glastn.out from ~jgreene/fexam
#usage: perl glast.pl filename
use strict;

my($filename, $newname, @name);

#get filename from command line @ARGV
$filename = shift;

#drop the '.seq' suffix for each filename
@name = split('\.', $filename);

#now add on the new suffix
$newname = "$name[0].glast";

#simulates a real program which would take time to run
sleep 2;

#open the file with the boilerplate BLAST output and the new output file
open(SAMPLE, "glastn.out");
open(OUTFILE, ">$newname");

#print a header line in each file
print OUTFILE "GLAST Output follows:\n";

#copy the text in glastn.out into the outputfile
while(<SAMPLE>){
	print OUTFILE $_;
}

#report what's been done
print "Output was placed in $newname\n";

#cleanup
close SAMPLE;
close OUTFILE;
exit;


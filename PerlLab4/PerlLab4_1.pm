package PerlLab4_1;

use Exporter;
@ISA    = qw(Exporter);
@EXPORT = qw(Length GC_percent Poly_T);

sub Length{
    my($dna) = @_;
    return length ($dna);
}
 
sub GC_percent{ 
    my($dna) = @_;
    my $gc_count = ($dna =~ tr/GCgc//);
	my $gc_percent = $gc_count/length($dna);
	return $gc_percent;
}

# Poly_T is defined here as having at least
# 15/20 5' T's
sub Poly_T{
    my($dna) = @_;
    my $left_end = substr($dna, 0, 20); 
	my $count = $left_end =~ tr/[Tt]//;
	$count >= 15 ? return $count : (return "No Poly-T");
}

1;

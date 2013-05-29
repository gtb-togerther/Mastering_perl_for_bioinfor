#!/usr/bin/perl

use strict;
use warnings;

my $dna = 'AATAATTTTCCGATC';

print "Mark 1:\n";
findmotif($dna);

print "Mark 2:\n";
&findmotif($dna);

print "Mark 3:\n";
my $subref = \&findmotif;
&$subref($dna);

print "Mark 4:\n";
my $subref1 = \&findmotif;
$subref1->($dna);

print "Mark 5:\n";
my $subref2 = \&findmotif;
&$subref2($dna);

sub findmotif{
    my($input) = @_;

    if($input =~/CCGA/){
        print "I found CCGA!\n";
    }else{
        print "No motif\n"
    }
}

# reference to the anonymous subroutine
print "\n\n\n";
my $findmotif = sub {
    my($input) = @_;

    if($input =~ /CCGA/) {
        print "I found CCGA!\n";
    }else{
        print "No motif\n";
    }
};

$findmotif->($dna);
&$findmotif($dna);

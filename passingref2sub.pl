#!/usr/bin/perl

use strict;
use warnings;

my @aminoacids1 = ('E', 'V', 'L');
my $aa1ref = \@aminoacids1;

my @aminoacids2 = ('D', 'T', 'Y');
my $aa2ref = \@aminoacids2;

# passing the values as reference
# printacids(\@aminoacids1, \@aminoacids2);
# passing by reference can also be memory efficent
#
printacids($aa1ref, $aa2ref);

sub printacids {
    my($aa1r, $aa2r) = @_;

    print "Amino acids 1\n";
    print "@$aa1r\n";
    print "Amino acids 2\n";
    print "@$aa2r\n";
}

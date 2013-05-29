#!/usr/bin/perl

use strict;
use warnings;

my %geneticmarkers = (
    'curly' => 'yes',
    'hairy' => 'no',
    'topiary' => 'yes'
);

my $hashref = \%geneticmarkers;

print "Here is what's in the reference:\n";
print $hashref, "\n";

print "Here is what the reference is pointing to:\n";
foreach my $k (keys %$hashref) {
    print "key\t$k\t\tvalue\t$$hashref{$k}\n";
}

print "Dereferencing using the arrow operator:\n";
foreach my $k (keys %$hashref) {
    print "key\t$k\t\tvalue\t$hashref->{$k}\n";
}

# $geneticmarkers{'curly'} vs $$hashref{'curly'} and
# $hashref->{'curly'}, mind no space before and after '->'

print "For key 'curly' the value is '", $$hashref{'curly'}, "'\n";
print "For key 'hairy' the value is '", $hashref->{'hairy'}, "'\n";

# anonymous hash
#
my $geneticmarkers = +{ # '+' before '{' to tell perl it's not a block
    'curly' => 'yes',
    'hairy' => 'no',
    'topiary' => 'yes'
};

print "Here is what is in the anonymous hash:\n";
foreach my $k (keys %$geneticmarkers) {
    print "key\t$k\tvalue\t$geneticmarkers->{$k}\n";
}

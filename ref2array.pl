#!/usr/bin/perl

use strict;
use warnings;

my @pentamers = ('cggca', 'tgatc', 'ttggc');

my $arrayref = \@pentamers;

print "Here is what's in the reference:\n";
print $arrayref, "\n";

print "Here is what the reference is pointing to:\n";
print "@{$arrayref}\n";
print "Here is the second value in the array:\n";
print ${$arrayref}[1], "\n";

# dereference using arrow operator
print "And here it is again:\n";
print $arrayref -> [1], "\n";

# Can not run?? 
# error in the book should be 1, not 2
#
my $array = [ ['Dennis', 'Drayna'], ['Callum', 'Bell'] ];
#print $arrary,"\n";
print "\n";
print $$array[0][1], "\n";
print $array -> [1][1], "\n";
print $array -> [1] -> [0], "\n";

# Anonymous arrays
# create an anonymous array by surrounding a list with square brackets 
my $pentamers1 = ['cggca', 'tgatc', 'ttggc'];
print "The third and last element of the array is ", $pentamers1 -> [2], "\n";
print "The entire array is: @$pentamers1\n";

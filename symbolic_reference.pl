#use strict;
use warnings;

my @mark1 = ('a1', 'a2', 'a3', 'a4');
my @mark2 = ('b1', 'b2', 'b3', 'b4');
my @mark3 = ('c1', 'c2', 'c3', 'c4');
my @mark4 = ('d1', 'd2', 'd4', 'd4');

my $arrayname = 'mark3';

# can not run ?
print "@{$arrayname}\n";
print "@mark3\n";




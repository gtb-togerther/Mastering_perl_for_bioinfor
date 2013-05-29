#!/usr/bin/perl

use strict;
use warnings;

use lib 'D:\programming\Perl\learnPerl\Mastering_Perl_for_Bioinformatics\pm';

use Geneticcode;

my $dna = 'AACCTTCCTTCCGGAAGAGAG';

# Initialize variables
my $protein = '';

# Translate each three-base codon to an amino acid, and append to a protein
for(my $i = 0; $i < (length($dna) - 2); $i += 3) {
    $protein .= Geneticcode::codon2aa( substr($dna, $i, 3) );
}

print $protein, "\n";

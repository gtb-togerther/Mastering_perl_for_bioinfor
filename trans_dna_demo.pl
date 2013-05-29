#!/usr/bin/perl

# Translate a DNA sequence into one of the six reading frames;

use strict;
use warnings;

use lib 'D:\programming\Perl\learnPerl\Mastering_Perl_for_Bioinformatics\pm';
use Geneticcode;
use SequenceIO;

# Initialize variables
my @file_data = ( );
my $dna = '';
my $revcom = '';
my $protein = '';

# Read in the contents of the file "sample.dna"
@file_data = SequenceIO::get_file_data("sample.dna");

# Extract the sequence data from the contents of the file "sample.dna"
$dna = SequenceIO::extract_sequence_from_fasta_data(@file_data);

# Translate the DNA to protein in one of the six reading frames
#  and print the protein in lines 70 characters long

print "\n------Reading Frame 1-------\n\n";

$protein = Geneticcode::translate_frame($dna, 1);

SequenceIO::print_sequence($protein, 70);

exit;

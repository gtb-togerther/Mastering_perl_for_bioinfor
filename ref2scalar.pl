use strict;
use warnings;

my $peptide = 'EIQADEVRL';
my $peptideref = \$peptide;

print "Here is what's in the reference:\n";
print $peptideref, "\n";

print "Here is what the reference is pointing to:\n";
print ${$peptideref}, "\n";
print $$peptideref, "\n";

print "\n\n----------reference to scalar constant----------\n\n";

my $peptideref1 = \'EIQADEVRL';
print "Here is what's in the reference:\n";
print $peptideref1, "\n";
print "Here is what the reference is pointing to:\n";
print ${$peptideref1}, "\n";

if(${$peptideref} eq ${$peptideref1}) {
    print "The content of '\$peptideref' and '\$peptideref1' is the same!\n\n";
}


# reference to a reference
#
my $value = 'ACGAAGCT';
my $refvalue = \$value;
my $refrefvalue = \$refvalue;

my $refrefrefvalue = \\\$value; # lack a '\' in the book

print $value, "\n";
print $$refvalue, "\n";
print $$$refrefvalue, "\n\n";

print $$$$refrefrefvalue, "\n";

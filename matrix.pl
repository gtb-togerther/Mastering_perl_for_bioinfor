use strict;
use warnings;

my @probes = (
    [1,3,2,9],
    [2,0,8,1],
    [5,4,6,7],
    [1,9,2,8]
);

# print "The probe at row 1, colum 2 has value ", $probes[1][2], "\n";

# declare a reference to an anonymous array to 
# build an array

# Declare reference to (empty) anonymous array
my $array = [ ];

# Initialize the array
for (my $i=0; $i < 4; ++$i) {
    for (my $j=0; $j < 4; ++$j) {
        $array->[$i][$j] = $i * $j;
    }
}

# Reset one of the element of the array
$array->[3][2] = 99;

# Print the array
for (my $i=0; $i < 4; ++$i) {
    for (my $j=0; $j < 4; ++$j) {
        printf("%3d ", $array->[$i][$j]);
        #print $array->[$i][$j];
    }
    print "\n";
}

#Say you have the following data:
# 
#  0   0   0   0 
#  0   1   2   3 
#  0   2   4   6 
#  0   3  99   9
# 
#You can read the data into a Perl array with the following loop:
# 
#while (<>) {
#  @row = split;
#  push(@array, [ @row ]);
#}
#

# Populate a 3-dimensional array
my $array3 = [ ];

# Initialize the array
for (my $i=0; $i < 4; ++$i) {
    for (my $j=0; $j < 4; ++$j) {
        for (my $k=0; $k < 4; ++$k) {
            $array3->[$i][$j][$k] = $i * $j * $k;
        }
    }
}

# Print the arry
print "\n------3 dimensional array------\n";

for (my $i=0; $i < 4; ++$i) {
    for (my $j=0; $j < 4; ++$j) {
        for (my $k=0; $k < 4; ++$k) {
            printf("%3d ", $array3->[$i][$j][$k]);
        }
        print "\n";
    }
    print "\n";
}

# Populate a 4-dimensional array
my $array4 = [ ];

# Initialize the array
for (my $i=0; $i < 4; ++$i) {
    for (my $j=0; $j < 4; ++$j) {
        for (my $k=0; $k < 4; ++$k) {
            for (my $l=0; $l <4; ++$l) {
                $array4->[$i][$j][$k][$l] = $i * $j * $k *$l;
            }
        }
    }
}

# Print the arry
print "\n------4 dimensional array------\n";

for (my $i=0; $i < 4; ++$i) {
    for (my $j=0; $j < 4; ++$j) {
        for (my $k=0; $k < 4; ++$k) {
            for (my $l=0; $l <4; ++$l) {
                printf("%3d ", $array4->[$i][$j][$k][$l]);
            }
            print "\n";
        }
        print "\n";
    }
    print "\n";
}

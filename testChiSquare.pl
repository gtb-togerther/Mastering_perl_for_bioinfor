#!/usr/bin/perl

use strict;
use warnings;

use Statistics::ChiSquare;

my (@subwaystops) = (14, 18, 23, 28, 34, 42, 50, 59, 66, 72, 79, 86, 96, 103, 110, 116, 125, 137);

print chisquare(@subwaystops);


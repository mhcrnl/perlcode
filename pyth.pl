#!/bin/perl
print "enter x1: ";
chomp($x1=<STDIN>);

print "enter y1: ";
chomp($y1=<STDIN>);

print "enter x2: ";
chomp($x2=<STDIN>);

print "enter y2: ";
chomp($y2=<STDIN>);

$d = sqrt(($x2-$x1)**2 + ($y2-$y1)**2  );
print "the distance is between ($x1, $y1) and ($x2, $y2) is : $d\n";
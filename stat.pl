#!/bin/perl
print "Enter stat:\t";
chomp($in=<STDIN>);
$in -= 10;
$in /= 2;
print int($in) ."\n";

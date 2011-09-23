#!/bin/perl
print "enter number: ";
chomp($x=<STDIN>);
if($x * 1 ne $x){
	print "$x is not a number.\n";
	exit
}
print "enter number of places: ";
chomp($y=<STDIN>);
if($y * 1 ne $y){
	print "$y is not a number.\n";
	exit
}
$places="1"."0"x$y;
#print $places."\n";
$x *= $places;
$x +=0.5;
$x = int($x);
$x /= $places;
print $x;

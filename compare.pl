#!/bin/perl
print "enter first number:";
chomp($x=<STDIN>);
if($x * 1 eq $x){
	print "$x is a number.\n"
} else {
	print "$x is not a number.\n";
	exit
}
print "enter second number:";
chomp($y=<STDIN>);
if($y * 1 eq $y){
	print "$y is a number.\n"
} else {
	print "$y is not a number.\n";
	exit
}
print "enter the product:";
chomp($z=<STDIN>);
if($z * 1 eq $z){
	print "$z is a number.\n"
} else {
	print "$z is not a number.\n";
	exit
}
$product = $x * $y;
if($product > $z){
	print "$z is greater than $product";
} else {
	print "$z is less than $product";
}

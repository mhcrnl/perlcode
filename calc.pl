#!/bin/perl
$total=0;
$in = "";
while($in ne "Q"){
	print "enter number('Q' to quit):";
	chomp($in=<STDIN>);
	if($in * 1 eq $in){
		print "$total + $in =";
		$total += $in;
		print "$total\n";
	}
	
}

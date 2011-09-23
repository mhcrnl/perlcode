#!/bin/perl
print "hwo high should i count?";
chomp($max=<STDIN>);
$i=0;
while($i<=$max){
	print "Count: $i\n";
	$i++;
}
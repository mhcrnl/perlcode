#!/bin/perl
$in="";
@input=();
$line="";
while(($in ne "q")&&($in ne "Q")){
		print "Please enter anything:\n";
		chomp($in=<STDIN>);
		push @input, $in;
		$line=$#input+1;
		#print $in ." ".$input[$#input-1]."\n";
}
print "Number of lines:\t".$line."\n"; 
print "Last input:\t\t".$input[$#input-1]."\n";

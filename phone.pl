#!/bin/perl
@queue=qw/Scott Misty Kyle Jeffry Sean/;

while($#queue > -1){

	print "enter new caller's name(blank for none):\t";
	chomp($newCall=<STDIN>);
	
	if($newCall ne ""){
		print "IS this caller a VIP (Y/N):";
		chomp($isVip = <STDIN>);
		
		if(($isVip eq "y")||($isVip eq"Y")){
			print "New call is a VIP\n";
			unshift(@queue, $newCall);
		}else{
			print "New call is not a VIP\n";
			push(@queue, $newCall);
		}
	}
	$curCall=shift(@queue);
	print "Just got off a call with: $curCall\n";
	print "Currently ".($#queue+1)." waiting in the queue.\n";
}
print "No callers left. \nGoodbye";
#!/bin/perl
use feature state;
sub greet {
	state @names;
	my $nameLast = shift;
	print "Hi $nameLast!";
	if (@names){
		print " I've seen: @names \n" ;
	}else{
		print " You are the first one here!\n";
	} 

	push @names, $nameLast;
}
greet ( "Fred" );
greet ( "Barney" );
greet ( "Wilma" );
greet ( "Betty" );

#!/bin/perl
sub greet {
	push @names, @_;
	if ($#_ == 0){
		print "Hi @{names}! You are the first one here!\n";
	} else {
		print "Hi ${names[$#names]}! $names[0] is also here!";
	}
}
greet ( "Fred" );
greet ( "Barney" );

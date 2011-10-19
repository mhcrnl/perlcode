#!/bin/perl
sub total {
	my $total = 0;
	foreach (@_) {	
		my $nextNumber = $_;
		#print "Next number\t".$nextNumber."\n";
		$total = $total + $nextNumber;
		#print "current total:\t".$total."\n";
		#print "\$\#_".$#_."\n";
	}
	return $total
}
my @fred = qw( 1 3 5 7 9 );
my $fredTotal = &total(@fred);
print "The total of \@fred is $fredTotal.\n";
print "Enter some numbers:\t";
my $usrTotal = &total(<STDIN>);
print "The total of those numbers is $usrTotal.\n";

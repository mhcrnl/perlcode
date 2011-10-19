#1/bin/perl
sub total {
	my $total= 0;
	foreach(@_){
		$total+=$_;
	}
	return $total;
}
$sum = &total(1..1000);
print "The sum of all the numbers between 1 and 1,000 is $sum.\n";

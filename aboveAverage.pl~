#!/bon/perl
my @fred = &aboveAverage(1..10);
print"\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = &aboveAverage(100, 1..10);
print "\@barney is @barney\n";
print "(Should just be 100)\n";
sub aboveAverage {
	my $average = &average(@_);
	my @aboveAverage=( );
	foreach(@_){
		if ($_ > $average){
			push @aboveAverage, $_;
		}
	}
	return @aboveAverage;
}
sub average {
	my $sum = 0;
	my $length = @_;
	foreach (@_){
		$sum+=$_;
	}
	my $average = $sum / $length;
}

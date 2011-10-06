print "What is your question? ";
chomp($q = <STDIN>);

print "Enter the answer threshold: ";
chomp($t = <STDIN>);

$y = 0;
$n = 0;

while( ($y < $t)  && ($n < $t) )   {
	$y = $y + rand(1);
	$n = $n + rand(1);

	print "Yes: $y, No: $n\n";
}

if( $y > $n ) {
	print "The answer to $q is: Yes\n";
} elsif ( $n > $y ) {
	print "The answer to $q is: No\n";
} else {
	print "The answer to $q is: Uncertain\n";
}

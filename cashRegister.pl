# Define item list, prices and initial stock
@items	=	qw (	Coke MntDew Water Hamburger Hotdog Fries BakedBeans IceCream Cake );
@prices =	qw (	1.99 1.99 3.00 4.00 3.00 3.00 5.00 3.50 1.50 );
@stock =	qw (	5 5 5 5 5 5 5 5 10 );

# Initialize total cost and purchased item list
$totalCost = 0;
$itemList = "";

$in = "";
# Continue until user types "q" or "Q"
while(($in ne "q") && ($in ne "Q")) {

	# Print list header
	print "Item\t\tName\t\tPrice\tStock\n";

	$idx = 0;
	# Display each item in lists
	while($idx <= $#items) {
		print "" . ($idx+1) . "\t\t$items[$idx]\t\t$prices[$idx]\t$stock[$idx]\n";	
		$idx++;
	}

	# Prompt user for input
	print "Which item do you want to buy (q to quit): ";
	chomp($in = <STDIN>);

	# Check if input is a number
	if( (1*$in) eq $in) {
		# Subtract one from item # for array idx
		$inIdx = $in-1;
		
		# Check if idx is valid
		if(($inIdx > $#items) || ($inIdx < 0)) {
			print "Invalid item\n";
			# next goes back to the beginning of loop
			next;
		}	

		# Check if item is in stock
		if($stock[$inIdx] <= 0) {
			print "$items[$inIdx] is out of stock\n";
			next;
		}

		# Subtract 1 from stock
		$stock[$inIdx] = $stock[$inIdx] - 1;
	
		# Increment totalCost by cost of Item
		$totalCost = $totalCost + $prices[$inIdx];	

		# Add item name to list of purchased items
		$itemList = $itemList . $items[$inIdx] . "\n";
		
		print "$items[$inIdx] was purchased for $prices[$inIdx]\n";
	}

}
print "Thank you for your business.\n";
print "Today you purchased the following items:\n$itemList\n";
print "Total Cost: $totalCost\n";


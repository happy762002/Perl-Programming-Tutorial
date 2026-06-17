# Q1 print the complimentary strand of DNA ?

print "enter the DNA strand: ";
$DNA = <STDIN>;
(chomp($DNA));
$DNA = uc($DNA);  #to convert in uppercase
if ($DNA =~ /^[ACGT]+$/) 
    {$DNA2 = $DNA;
    $DNA2 =~ tr/ACGT/TGCA/;  # Convert to complementary DNA strand
    print "The Original DNA strand by user: $DNA\n","The Complementary DNA strand is: $DNA2\n";}

else {print "Invalid input! Please enter only DNA bases (A, C, G, T).\n";}


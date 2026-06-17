print("Welcome to Transcription (DNA to RNA)\n");

print "enter the DNA strand: ";$DNA = <STDIN>;(chomp($DNA));
$DNA = uc($DNA);  #to convert in uppercase
if ($DNA =~ /^[ACGT]+$/) {$RNA = $DNA;$RNA =~ tr/ACGU/UGCA/;  # Convert to complementary DNA strand
    print "The Original DNA strand by user: $DNA\n","The Complementary RNA strand is: $RNA\n";}

else {print "Invalid input! Please enter only DNA bases (A, C, G, T).\n";}

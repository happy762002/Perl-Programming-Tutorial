# Open the file
my $filename = 'file.txt';  # Replace 'file.txt' with the path to your file
open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";

# Read the file line by line
while (my $line = <$fh>) {
    chomp $line;  # Remove the newline character
    print "$line\n";  # Print each line
}

# Close the file
close($fh);

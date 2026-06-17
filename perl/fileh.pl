
# Open file safely
open( $f, "<", "file.txt") or die "Cannot open file.txt: ";

# Read all lines into an array
@lines = <$f>;

# Close the file
close($f);

# Print file contents (optional)
print @lines;

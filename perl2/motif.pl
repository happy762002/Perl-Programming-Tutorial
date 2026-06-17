print "welcome to motif finder....\n";
print "enter the filename: ";
# Read FASTA file
$filename = <STDIN>;
chomp($filename);

# Try to open the file
open($FILE, '<', $filename) or die "Could not open file '$filename': $!\n";

# Read and concatenate sequence lines (skip FASTA header)
$seq = '';
while ($line = <$FILE>) {
    chomp($line);
    next if $line =~ /^>/;    # Skip FASTA header lines
    $seq .= uc($line);   # Append uppercased sequence lines
}
close($FILE);

#frequency calculations
print "enter the motif [A/T/G/C/U]: ";
$motif = <STDIN>;
chomp($motif);
$motif = uc($motif);
print "The use input is: $motif\n";

if ($motif =~ /^[ATGC]+$/) {
    $count = () = $seq =~ /$motif/gi;
    $netpossibleposition = length($seq)-length($motif)+1;
    $freq_percentage = ($count/$netpossibleposition)*100;

    print "Motif is: '$motif' and occurance is: $count times\n";
    print "Motif frequency percentage: " . sprintf("%.2f%%", $freq_percentage) . "\n";

    # print "$netpossibleposition\n";
}

else {print "\nINVALID INPUT: DNA sequence contains characters other than A, T, G, C!\n";}
print "Enter the DNA sequence: ";
$s = <STDIN>;
chomp($s);
# Convert to uppercase
$s = uc($s);
# Validate input (only A, C, G, T allowed)
if ($s =~ /^[ACGT]+$/) {print "Original strand: $s\n";
    # Reverse the sequence
    $rev = reverse $s;
    print "Reverse strand: $rev\n";
    # Get the reverse complement
    $rev_compliment = $rev;
    $rev_compliment =~ tr/ACGT/TGCA/;  # Corrected base pairing
    print "Reverse complement strand: $rev_compliment\n";}
     
else {print "Invalid input! Please enter only DNA bases (A, C, G, T).\n";}

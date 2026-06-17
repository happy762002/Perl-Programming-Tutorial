# Desired length of random DNA sequence
$length = 50;

# Possible nucleotides
@nucleotides = ('A', 'T', 'G', 'C');

# Initialize empty DNA string
$random_dna = '';

# Generate sequence
for ($i = 0; $i < $length; $i++) {
    $random_dna .= $nucleotides[ int(rand(@nucleotides)) ];
}

# Print the result
print "Random DNA sequence ($length bases):\n$random_dna\n";

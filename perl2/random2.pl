$original = "ATGCGTACGTA";
print "Original DNA: $original\n";

# Define possible nucleotides
@nucleotides = ('A', 'C', 'G', 'T');

# Generate random position in the DNA sequence
$position = int(rand(length($original)));
# print "$position";

# Pick a random nucleotide
$newbase = $nucleotides[ int(rand(@nucleotides)) ];
# print "$newbase";

# Mutate the DNA at the random position
substr($original, $position, 1, $newbase);  # format: substr(STRING, OFFSET, LENGTH, REPLACEMENT)

# Print mutated sequence
print "position: $position\n";
print "newbase: $newbase\n";
print "Mutated DNA : $original\n";

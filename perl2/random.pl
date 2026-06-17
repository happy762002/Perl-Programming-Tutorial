# Subroutine to mutate a DNA sequence
sub mutate {
    ($dna) = @_;
    @nucleotides = ('A', 'C', 'G', 'T');

    # Pick a random position in the DNA
    $position = randomposition($dna);

    # Pick a random nucleotide
    $newbase = randomnucleotide(@nucleotides);

    # Mutate the DNA at the random position
    substr($dna, $position, 1, $newbase); # formate substr(STRING, OFFSET, LENGTH, REPLACEMENT)

    return $dna;
}

# Helper: Get a random position in the DNA sequence
sub randomposition {
    ($dna) = @_;
    return int(rand(length($dna)));
}

# Helper: Pick a random nucleotide
sub randomnucleotide {
    @nucleotides = @_;
    return $nucleotides[ int(rand(@nucleotides)) ];
}

# Example usage
$original = "ATGCGTACGTA";
print "Original DNA: $original\n";

$mutated = mutate($original);
print "Mutated DNA : $mutated\n";

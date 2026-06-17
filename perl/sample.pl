
use strict;
use warnings;

# Prompt user for DNA sequence
print "Enter DNA sequence: ";
my $dna = <STDIN>;
$dna = process_dna($dna);

# Translate and print result
my $protein = translate_dna($dna);
print "\nTranslated protein sequence:\n$protein\n";

# Clean and validate DNA input
sub process_dna {
    my ($seq) = @_;
    $seq = uc($seq); # Convert to uppercase
    $seq =~ s/[^ACGT]//g; # Remove invalid characters
    die "Error: Empty or invalid DNA sequence!\n" unless length($seq) > 0;
    return $seq;
}

# Translation logic (no predefined hash)
sub translate_dna {
    my ($dna) = @_;
    my $protein = '';
    # Genetic code string (order-critical for index mapping)
    my $genetic_code = 
        "FFLLSSSSYY**CC*WLLLLPPPPHHQQRRRRIIIMTTTTNNKKSSRRVVVVAAAADDEEGGGG";
    
    for (my $i = 0; $i < length($dna); $i += 3) {
        my $codon = substr($dna, $i, 3);
        last if length($codon) < 3;
        
        # Calculate index: T=0, C=1, A=2, G=3
        my $index = 0;
        for my $pos (0..2) {
            my $nt = substr($codon, $pos, 1);
            $index *= 4; # Base-4 positional weighting
            $index += index("TCAG", $nt); # Maps T→0, C→1, A→2, G→3
        }
        
        # Get amino acid from genetic_code string
        $protein .= substr($genetic_code, $index, 1) || 'X';
    }
    return $protein;
}
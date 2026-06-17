
print "Enter the DNA sequence: ";
$dna = <STDIN>;
chomp($dna);
$dna = uc($dna);

print "Enter the first position to swap: ";
$pos1 = <STDIN>;
chomp($pos1);
$pos1 = int($pos1);

print "Enter the second position to swap: ";
$pos2 = <STDIN>;
chomp($pos2);
$pos2 = int($pos2);

$b1 = substr($dna,$pos1,1);
$b2 = substr($dna,$pos2,1);

$modified_dna = $dna;
substr($modified_dna,$pos1,1) = $b2;
substr($modified_dna,$pos2,1) = $b1;    

print "Original DNA sequence: $dna\n";
print "Modified DNA sequence: $modified_dna\n";

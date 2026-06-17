print "Find the nucleotide seq frequncy"
print "enter the sequence : ";
$dna = <STDIN>;
chomp($dna);
$dna = uc($dna);

$count_A = 0;
$count_T = 0;
$count_G = 0;
$count_C = 0;

$count_A = ($dna =~ tr/A//);
$count_T = ($dna =~ tr/T//);
$count_G = ($dna =~ tr/G//);
$count_C = ($dna =~ tr/C//);

$total = $count_A + $count_T + $count_G + $count_C;

$freq_A = ($count_A / $total) * 100;
$freq_T = ($count_T / $total) * 100;
$freq_G = ($count_G / $total) * 100;
$freq_C = ($count_C / $total) * 100;

print "DNA Sequence: $dna\n";
print "Total length: $total\n";
print "A: $count_A ", sprintf("%.2f", $freq_A), " %\n";
print "T: $count_T ", sprintf("%.2f", $freq_T), " %\n";
print "G: $count_G ", sprintf("%.2f", $freq_G), " %\n";
print "C: $count_C ", sprintf("%.2f", $freq_C), " %\n";

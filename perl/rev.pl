print "enter the seq : ";
$s = <STDIN>;
chomp($s);

$s = uc($s);

print "Original strand : $s\n";

$rev = reverse $s;
print "reverse strand : $rev\n";

$rev_compliment = $rev;
$rev_compliment =~ tr/ATGC/TACG/;


print "reverse compliment strand : $rev_compliment\n";



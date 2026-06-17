
open($fh, "<", "seq.txt") or die "File nahi khuli: $!";

# loops ki help se humne seq ko line by line padha joh memory kam use krtaah hai

for $line (<$fh>) 
{
    chomp($line);  # Enter hatao
    print "$line\n";
}

close($fh);

print "Saari sequences print ho gayi!\n";
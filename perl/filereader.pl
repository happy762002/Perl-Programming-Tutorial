my $filename = 'file.txt';

open(my $fh, '<', $filename) or die "cannot open'$filename':$!";

while(my$line = <$fh>) {
    chomp $line;
    # print "line:$line\n";
}
close($fh);

open(my $fh, '<', $filename) or die "cannot open'$filename':$!";
my $content = do {local $/; <$fh>};
close($fh);
print "full content:\n $content";

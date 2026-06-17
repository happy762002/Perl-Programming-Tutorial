$filename = 'file.txt';

open( $fh, '<', $filename) or die "cannot open'$filename':$!";

while($line = <$fh>) {
    chomp $line;
    # print "line:$line\n";
}
close($fh);

# open( $fh, '<', $filename) or die "cannot open'$filename':$!";
#  $content = do {local $/; <$fh>};
# close($fh);
# print "full content:\n $content";

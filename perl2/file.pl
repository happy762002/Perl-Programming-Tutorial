# file handler
# open the file
open($f, "<", "yash.txt") or die ("can't open the file yash.txt");
# storing the content in array
@line = <$f>;
# close the file
close($f);
# print the file content
print "@line";
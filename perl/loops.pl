# while loops

print "enter number : ";
$x = <STDIN>;
chomp($x);
while($x <= 20) # condiotion cammand
{
    print "$x\n";
    $x = $x+1; # update commmand
}

# until loop

$x = <STDIN>;
chomp($x);
until($x >= 20) # condiotion cammand opposite of while loop
{
    print "$x\n";
    $x = $x+1; # update commmand
}

# for loop

print "enter the number to print the table : ";
$n = <STDIN>;
chomp($n);
print "the table of $n is:\n";

for($x = 1; $x <= 10; $x++)
{
    $r = $n * $x;
    print "$n X $x = $r\n";
}

# do while loop

print "enter the number to print the table : ";
$n = <STDIN>;
chomp($n);
print "the table of $n is:\n";
$x = 1;
do {
    $r = $n * $x;
    print "$n X $x = $r\n";
    $x = $x+1;
}
while($x<=10);

# nested loops


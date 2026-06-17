# write the programme to check wheather the number is even or odd

print "enter the number to check odd/even : ";
$x = <STDIN>;
chomp($x);

if($x%2==0)
{
    print "The number is even\n";
}
else
{
    print "The number is odd\n";
}

# unless commmand

# print "enter the number : "; 
# $a = <STDIN>;
# chomp($a);

# unless($a % 2 == 0)
# {
#     print "the $a is odd";
# }

# else
# {
#     print "the $a is even";
# }
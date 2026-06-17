# concat - join the variables.
# methods of concat the variables are 
# 1) String Interpolation method

print "enter the value1: ";
$a = <STDIN>,chomp($a),print "$a\n";

print "enter the value2: ";
$b = <STDIN>,chomp($b),print "$b\n";

# concat
print "the concat command is: $a$b\n";

# 2) Dot method

print "the concat command by dot method: $a"."$b\n";

# 3) joining string method

@c = ("ATGC","GGCT");
$c = join("",@c);

print "the concat command by join array method: $c\n";


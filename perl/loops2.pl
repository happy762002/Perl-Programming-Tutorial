
# for loops

print "enter the number : ";
$a = <STDIN>;
chomp($a);

for($i = 1; $i <= $a; $i++)
{
    print "Hello World!\n";
}

# Q1 print the number for 1-100 ?

print "enter the number : ";
$a = <STDIN>;
chomp($a);

for($i = 1; $i <= $a; $i++)
{
    print "$i\n";
}

# Q2 print the even number ?

print "enter the number : ";
$a = <STDIN>;
chomp($a);

for($i = 1; $i <= $a; $i++)
{
    if($i % 2 == 0)
    {
        print "$i\n"; 
    }
}

# Q3 print the odd number

print "enter the number : ";
$a = <STDIN>;
chomp($a);

for($i = 1; $i <= $a; $i++)
{
    if($i % 2 != 0)
    {
        print "$i\n"; 
    }
}

# Q4 print the table of N number ?

print "enter the number you want to print table : ";
$a = <STDIN>;
chomp($a);

for($i = 1; $i <= 10; $i++)
{
    $r = $a*$i;
    print "$a X $i = $r\n"; 
}

# Q5 print an AP       

# code format if number is 1,3,5,7.... 

# i  = 1; d = 2; so formula = a+(n-1)d => 1+(n-1)*2 => (2n-1) 
# where n = user input.
print "print the AP\n";
print "enter the number : ";
$a = <STDIN>;
chomp($a);

for($i = 1; $i <= 2*$a-1; $i+=2)
{
    
    print "$i\n";
}

# Q6 print the AP without maths

print "enter the number : ";
$a = <STDIN>;
chomp($a);
$b = 4;
for($i = 1; $i <= $a; $i++)
{
    print "$b\n";
    $b = $b+2;      # by adding the extra variable $b we can print the AP;
}

#  Q7 print GP with d = 3, i = 2 and n = user input

print "enter the number : ";
$a = <STDIN>;
chomp($a);
$b = 1;
for($i = 1; $i <= $a; $i++)
{
    print "$b\n";
    $b = $b*3;      
}

# write the programme to print 1-100 even number using continue ?

print "enter the number : ";
$a = <STDIN>;
chomp($a);
for($i = 1; $i <= $a; $i++)
{
    if ($i % 2 == 0)
    {
        next; # in perl their is next statement
    }
    print "$i\n";
}


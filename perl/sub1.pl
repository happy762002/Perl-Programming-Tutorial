# create the area and parimeter calculator using subrountines and agruments

sub rec
{
    $area  = @_[0]*@_[1];
    $parimeter = 2*(@_[0]+@_[1]);
    print "The area of rectangle is : $area\n","The parimeter of recctangle is : $parimeter\n";
}

# user input 
print "Enter the lenght : ";
chomp($l = <STDIN>);
print "Enter the width : ";
chomp($w = <STDIN>);

# calling the function
rec($l,$w)
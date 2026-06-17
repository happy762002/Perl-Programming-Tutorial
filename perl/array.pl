#create an array;
# @ use for array;
@yash = ("happy",1,"sandeep",2,"sanjay",3);
print("@yash\n");

#accessing the elements of array

print ("1st element : @yash[0]\n");
print ("last element : @yash[-1]\n");
print ("element from 0 to 3 index : @yash[0..3]\n");
print ("element from 2 to last index : @yash[1..$#yash]\n");
print ("last of 3 elements of an array : @yash[$#yash-2..$#yash]\n");

#declaring a number array with range operator

# array opperation;
# 1..10 give the number blw 1 to 100
@rank = (1..10);
@alphabets = (a..z);

print "@rank\n";
print "@alphabets\n";
# scaler($) operator is used in array gives the size of the array;
$size = @alphabets;

print "The size of alphabets : $size\n";

# add or remove in array;
@stu = ("yash","sanjay","sandeep");
print "original : @stu\n";

# to add the element in array
push(@stu, "happy");     # PUSH is use to add the element at the last;
print "last : @stu\n";

unshift(@stu, "rishab"); #UNSHIFT add the element in the beginning;
print "beginning : @stu\n";

# to remove the element in the array;

pop(@stu);
print "remove from end : @stu\n";

shift(@stu);
print "remove from beginning : @stu\n";

# array slicing 
@days = ("sun","mon","tues","wed","thu","fri","sat");
@physics = @days[1,3,5];
print "physics : @physics\n";
@maths = @days[2,4,6];
print "maths : @maths\n";

# replacing the element values;

@names = ("yash","happy","rishab");
@replace = ("sunny","john");

print "original : @names\n";

splice(@names, 1,2, @replace); #SPLICE this keyword is used to replace the element with new elements;
                               #the format splice(@a ,index,length, @b) length: how many element u want to remove. 

print "modify : @names\n";     

# converting string to array;

$happy = "hello how are you";
print "string : $happy\n";

@array = split(" ", $happy);
print "array : @array\n";
print "@array[0]\n";

# sort and merge in array;

@list = (1,5,8,2,3,4,5);
print "original : @list\n";

@list2 = sort(@list);
print "sort : @list2\n";

@a = (1..5);
@b = (6..10);
@c = (@a, @b);
@d = (@a.@b);       #this variable doesn't gives an error "." the dot only adds the number from range (1-10),
                    #this command can be useful for merging the STRING values not the INT values.
              
print "1st way merge : @c\n";
print "2nd way merge : @a @b\n";
print "add the number from range (1-10) : @d\n"; 
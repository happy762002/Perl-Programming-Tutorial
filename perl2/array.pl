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

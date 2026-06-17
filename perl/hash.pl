# denoted by %
%players = (1=>"Yash", 2=>"Roger", 3=>"Andy",4=> "Sandeep");
%cap = ("India"=>"Delhi", "US"=>"Washington DC");

print "best player : $players{1}\n";
print "India's Capital : $cap{'India'}\n";

# code format : print $hash_name{key_values}
# key_values are before '=>'.

# splicing in hashes

@list = @players{1..3};
@list2 = @players{1,3};

print "Spliced list : @list\n";
print "Spliced list2 : @list2\n";

# obtaining keys and values from hashes
# to obtain keys
@k = sort(keys %players);
# @V = (values %players);
@v = map { $players{$_} } @k;

print "Keys : @k\n";
print "Values : @v\n";
# print "sorted values : @C";

# exists function using if else command in hash
print "enter the rank (1-4) : ";
$rank = <STDIN>;
chomp($rank); #chomp is to rmv the newlines;
if(exists($players{$rank}))
{
    print "the rank $rank belongs to : $players{$rank}\n";
}

else
{
    print "invaild enter\n";
}

# how to obtain size of the hash

@list = keys %players;
$size = @list;

print "the size of the hash is : $size\n";

# how to add and remove the hash values
# $hash_name{key} = "value"; adding format

# adding the hash value

$players{5} = "Happy";
@list = keys %players;
$size = @list;

print "the size of the hash after adding is : $size\n";

# to dlt the hash value 

delete $players{5};
@list = keys %players;
$size = @list;

print "the size of the hash after deleting is : $size\n";

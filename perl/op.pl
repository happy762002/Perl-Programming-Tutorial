# Q1 count the digits of the number

# print "enter the number : ";
# $n = <STDIN>;
# chomp($n);

# $size = 0;
# while($n != 0 ){
#     $n = int($n/10); 
#     $size++;
# }
# print "$size\n"; 

# # sum of digit 

# print "Enter a number: ";
# my $n = <STDIN>;
# chomp($n);

# my $sum = 0;

# while ($n > 0) {
#     $sum += $n % 10;   # Extract last digit and add to sum
#     $n = int($n / 10); # Remove last digit
# }

# print "Sum of digits: $sum\n";

# # print the sum of even number

# print "Enter a number: ";
# my $n = <STDIN>;
# chomp($n);

# my $sum = 0;

# while ($n > 0) {
#     my $digit = $n % 10;  # Extract last digit
#     $sum += $digit if $digit % 2 == 0;  # Add only if even
#     $n = int($n / 10);  # Remove last digit
# }

# print "Sum of even digits: $sum\n";

# # print sum of odd number 

# print "Enter a number: ";
# my $n = <STDIN>;
# chomp($n);

# my $sum = 0;

# while ($n > 0) {
#     my $digit = $n % 10;  # Extract last digit
#     $sum += $digit if $digit % 2 != 0;  # Add only if odd
#     $n = int($n / 10);  # Remove last digit
# }

# print "Sum of odd digits: $sum\n";

# print the given number in reverse

# print "Enter the number: ";
# $n = <STDIN>;
# chomp($n);

# $r = 0;

# while ($n > 0){  # Corrected: Added $
#     $r = $n % 10;  # Extract last digit
#     print "$r";  # Print digit
#     $n = int($n / 10);  # Integer division to remove last digit (updation command)
# }

# sum the given and reverse number

# print "Enter the number: ";
# $n = <STDIN>;
# chomp($n);

# $r = 0;

# while ($n > 0){  # Corrected: Added $
#     $r = $n % 10;  # Extract last digit
    
#     print "$r";  # Print digit
    
#     $n = int($n / 10);  # Integer division to remove last digit (updation command)
# }
# print "$r";

# palindrome

print "enter the number : ";
$n = <STDIN>;
chomp($n);
$a = $n;

while($n>0)
{
    $r = $n % 10;
    $s = int($r + ($s*10));
    $n = int($n/10);  
}

if ($a == $s){
    print "the number is palindrome : \n";
}
else{
    print "the number is not palindrome:\n";
}
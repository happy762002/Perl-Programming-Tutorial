
while (1) {
          print "-----------\n",
          "Calculator\n",
          "-----------\n";
    print "-----------------------------\n",
          "What do you want to calculate?\n",
          "-----------------------------\n",
          "Add (+)\n", "Sub (-)\n", "Multiply (*)\n", "Divide (/)\n",
          "Remainder (%)\n", "Quit (q)\n",
          "-----------------------------\n";

    print "Enter an operation: ";
    my $sym = <STDIN>;
    chomp($sym);

    
    if ($sym eq "q") {
        print "Exiting calculator. Goodbye!\n";
        last;
    }

    print "-----------------------------\n";
    print "Enter first number: ";
    my $a = <STDIN>;
    chomp($a);

    print "Enter second number: ";
    my $b = <STDIN>;
    chomp($b);

    print "-----------------------------\n";

    if ($sym eq "+") {
        print "$a + $b = ", $a + $b, "\n";
    }
    elsif ($sym eq "-") {
        print "$a - $b = ", $a - $b, "\n";
    }
    elsif ($sym eq "*") {
        print "$a * $b = ", $a * $b, "\n";
    }
    elsif ($sym eq "/") {
        if ($b == 0) {
            print "Error: Division by zero is not allowed.\n";
        } else {
            print "$a / $b = ", $a / $b, "\n";
        }
    }
    elsif ($sym eq "%") {
        if ($b == 0) {
            print "Error: Modulo by zero is not allowed.\n";
        } else {
            print "$a % $b = ", $a % $b, "\n";
        }
    }
    else {
        print "INVALID INPUT! Please enter a valid operation.\n";
    }

    print "-----------------------------\n";
}

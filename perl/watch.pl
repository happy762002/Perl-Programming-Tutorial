@time = localtime();
$sec = @time[0]; 
$min = @time[1];
$hrs = @time[2];

if($hrs<12) {$dhrs = $hrs;$x = "AM";}
elsif($hrs==12) {$dhrs = $hrs;$x = "PM";}
else {$dhrs = $hrs-12;$x = "PM";}

print "The 24 hrs time is $hrs : $min : $sec\n","The 12 hrs time is $dhrs : $min : $sec $x\n";
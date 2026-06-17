@month = ("Jan","Feb","Mar","April","May","June","July","Aug","Sep","Oct","Nov","Dec");
@week = ("Sun","Mon","Tues","Wed","Thru","Fri","Sat");
@time = localtime();
# print "@time\n";

$sec = @time[0]; $min = @time[1];$hrs = @time[2];

if($hrs<12) {$dhrs = $hrs;$x = "AM";}
elsif($hrs==12) {$dhrs = $hrs;$x = "PM";}
else {$dhrs = $hrs-12;$x = "PM";}

# print "The 24 hrs time is $hrs : $min : $sec\n";
# print "The 12 hrs time is $dhrs : $min : $sec $x\n";

$date = @time[3];$month = @month[@time[4]];$year = 1900+@time[5];$week = @week[@time[6]];

print "current time : $dhrs : $min : $sec $x\n","current date : $week, $date/$month/$year\n";
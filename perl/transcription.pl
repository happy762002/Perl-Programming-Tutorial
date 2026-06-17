print("Welcome to Transcription (DNA to RNA)\n");

# Read user input
$DNA = <STDIN>;
chomp($DNA);

# Convert to uppercase (optional but recommended)
$DNA = uc($DNA);
print "DNA Strand : $DNA\n";

$RNA = $DNA;

#this command is used to substitute "s for substitution g for globel substitution"
$RNA =~ tr/T/U/;

print("TRANSCRIBED STRAND : $RNA\n");
exit;



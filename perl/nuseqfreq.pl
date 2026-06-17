#!/usr/bin/perl
use strict;
use warnings;

# Sample DNA sequence (you can modify this)
print "enter the sequence : ";
my $dna = <STDIN>;
chomp($dna);
# my $dna = "ATGGCGTACGTAGCTAGCTAGCTAGC";

# Convert to uppercase to handle both cases
$dna = uc($dna);

# Initialize counters
my $count_A = 0;
my $count_T = 0;
my $count_G = 0;
my $count_C = 0;

# Count each nucleotide
$count_A = ($dna =~ tr/A//);
$count_T = ($dna =~ tr/T//);
$count_G = ($dna =~ tr/G//);
$count_C = ($dna =~ tr/C//);

# Calculate total length
my $total = $count_A + $count_T + $count_G + $count_C;

# Calculate frequencies
my $freq_A = ($count_A / $total) * 100;
my $freq_T = ($count_T / $total) * 100;
my $freq_G = ($count_G / $total) * 100;
my $freq_C = ($count_C / $total) * 100;

# Print results
print "DNA Sequence: $dna\n";
print "Total length: $total\n";
print "A: $count_A ", sprintf("%.2f", $freq_A), " %\n";
print "T: $count_T ", sprintf("%.2f", $freq_T), " %\n";
print "G: $count_G ", sprintf("%.2f", $freq_G), " %\n";
print "C: $count_C ", sprintf("%.2f", $freq_C), " %\n";

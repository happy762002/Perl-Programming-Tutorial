#!/usr/bin/perl
use strict;
use warnings;

sub floyd_warshall {
    my ($graph, $n) = @_;
    my @dist;

    # Initialize distance matrix
    for my $i (0..$n-1) {
        for my $j (0..$n-1) {
            if ($i == $j) {
                $dist[$i][$j] = 0; # Distance to itself is 0
            } elsif (exists $graph->{$i}{$j}) {
                $dist[$i][$j] = 1; # Directly connected nodes have distance 1
            } else {
                $dist[$i][$j] = 1e9; # Large value for unconnected nodes
            }
        }
    }

    # Floyd-Warshall Algorithm for all-pairs shortest path
    for my $k (0..$n-1) {
        for my $i (0..$n-1) {
            for my $j (0..$n-1) {
                if ($dist[$i][$j] > $dist[$i][$k] + $dist[$k][$j]) {
                    $dist[$i][$j] = $dist[$i][$k] + $dist[$k][$j];
                }
            }
        }
    }

    return \@dist;
}

sub wiener_index {
    my ($dist, $n) = @_;
    my $W = 0;

    # Sum up all pairwise shortest path distances
    for my $i (0..$n-2) {
        for my $j ($i+1..$n-1) {
            $W += $dist->[$i][$j];
        }
    }
    
    return $W;
}

# User input for adjacency list
print "Enter number of vertices: ";
my $n = <STDIN>;
chomp($n);

my %graph;
print "Enter edges (format: u v). Type 'done' to finish:\n";
while (my $input = <STDIN>) {
    chomp($input);
    last if $input eq "done";
    my ($u, $v) = split(/\s+/, $input);
    $graph{$u}{$v} = 1;
    $graph{$v}{$u} = 1; # Undirected graph
}

# Compute shortest paths
my $dist_matrix = floyd_warshall(\%graph, $n);

# Compute Wiener Index
my $W = wiener_index($dist_matrix, $n);
print "Wiener Index: $W\n";
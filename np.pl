#!/usr/bin/perl
use strict;
use warnings;

while(<>) {
  my %permutations;

  if (/^(\S+)\s+(\S+)$/) { # First and Last name, two words
    #John.Smith/john.smith/JOHN.SMITH
    $permutations{"$1.$2"} = 1;
    $permutations{lc "$1.$2"} = 1;
    $permutations{uc "$1.$2"} = 1;
    #JSmith/jsmith/JSMITH
    $permutations{substr($1,0,1)} = 1;
    $permutations{lc substr($1,0,1).$2} = 1;
    $permutations{uc substr($1,0,1).$2} = 1;
    #JohnS/johns/JOHNS
    $permutations{$1.substr($2,0,1)} = 1;
    $permutations{lc substr($1,0,1).$2} = 1;
    $permutations{uc substr($1,0,1).$2} = 1;
    #SmithJ/smithj/SMITHJ
    $permutations{$2.substr($1,0,1)} = 1;
    $permutations{lc $2.substr($1,0,1)} = 1;
    $permutations{uc $2.substr($1,0,1)} = 1;
    #SJohn/sjohn/SJOHN
    $permutations{substr($2,0,1).$1} = 1;
    $permutations{lc substr($2,0,1).$1} = 1;
    $permutations{uc substr($2,0,1).$1} = 1;
  }

  if (/^(\S+)\s+(\S+)\s+(\S+)$/) { # First, Middle and Last name, three words
    #John Carl Smith
    $permutations{"$1.$2.$3\n"} = 1;
    $permutations{lc "$1.$2.$3\n"} = 1;
    $permutations{uc "$1.$2.$3\n"} = 1;
  }

  print join "\n", keys %permutations;
}

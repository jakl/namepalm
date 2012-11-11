#!/usr/bin/perl
while(<>) {
  my ($first, $last) = /(\S+)\s+(\S+)/;

  #name with period as enter
  print "$first.$last\n";
  #name with period tolower()
  print lc "$first.$last\n";
  #name with period toupper()
  print uc "$first.$last\n";

  print substr($first, 0, 1) . $last;
}

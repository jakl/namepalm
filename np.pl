#!/usr/bin/perl
while(<>) {
  my ($first,$last) = /(\S+)\s+(\S+)/;
  #John.Smith/john.smith/JOHN.SMITH
  print "$first.$last\n";
  print lc "$first.$last\n";
  print uc "$first.$last\n";
  #JSmith/jsmith/JSMITH
  print substr($first,0,1).$last;print"\n";
  print lc substr($first,0,1).$last;print"\n";
  print uc substr($first,0,1).$last;print"\n";
  #JohnS/johns/JOHNS
  print $first.substr($last,0,1);print"\n";
  print lc substr($first,0,1).$last; print"\n";
  print uc substr($first,0,1).$last;print"\n";
  #SmithJ/smithj/SMITHJ
  print $last.substr($first,0,1);print"\n";
  print lc $last.substr($first,0,1);print"\n";
  print uc $last.substr($first,0,1);print"\n";
  #SJohn/sjohn/SJOHN
  print substr($last,0,1).$first;print"\n";
  print lc substr($last,0,1).$first;print"\n";
  print uc substr($last,0,1).$first;print"\n";
}

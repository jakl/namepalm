while(<>) {
my ($first, $last) = /(\S+)\s+(\S+)/;
print "First:$first Last: $last\n";

#name with period as enter
print "$first.$last\n";
#name with period tolower()
print lc "$first.$last\n";
#name with period toupper()
print uc "$first.$last\n";
}

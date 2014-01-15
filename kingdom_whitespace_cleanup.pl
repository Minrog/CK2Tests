#!/usr/bin/perl

use warnings;
use strict;

open (FILE, "05_kingdoms.txt") or die "$!\n";
open (OUT, ">05_kingdoms.tmp") or die "$!\n";
while(<FILE>) {
  next if /^\s*$/;
  print OUT $_;
}
close FILE; close OUT;
rename("05_kingdoms.txt", "05_kingdoms.bak")
  or die "Error in rename: $!\n";
rename("05_kingdoms.tmp", "05_kingdoms.txt")
  or die "Error in rename: $!";
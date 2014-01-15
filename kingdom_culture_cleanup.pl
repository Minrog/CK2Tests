#!/usr/bin/perl

use warnings;
use strict;

open (FILE, "05_kingdoms.txt") or die "$!\n";
open (OUT, ">05_kingdoms.tmp") or die "$!\n";

while(<FILE>) {

#North German Culture Group
  next if (/^\s*north_germanic = ".*"/) ||
	(/^\s*norse = ".*"/) ||
	(/^\s*swedish = ".*"/) ||
	(/^\s*norwegian = ".*"/) ||
	(/^\s*icelandic = ".*"/) ||
#Central Germanic Culture Group
	(/^\s*central_germanic = ".*"/) ||
	(/^\s*german = ".*"/) ||
	(/^\s*dutch = ".*"/) ||
#West Germanic Culture Group
	(/^\s*west_germanic = ".*"/) ||
	(/^\s*english = ".*"/) ||
	(/^\s*saxon = ".*"/) ||
	(/^\s*english_norse = ".*"/) ||
#Latin Culture Group
	(/^\s*latin = ".*"/) ||
	(/^\s*frankish = ".*"/) ||
	(/^\s*norman = ".*"/) ||
	(/^\s*italian = ".*"/) ||
	(/^\s*occitan = ".*"/) ||
	(/^\s*roman = ".*"/) ||
	(/^\s*sicilian = ".*"/) ||
#Iberian Culture Group
	(/^\s*iberian = ".*"/) ||
	(/^\s*basque = ".*"/) ||
	(/^\s*castillan = ".*"/) ||
	(/^\s*catalan = ".*"/) ||
	(/^\s*portuguese = ".*"/) ||
#Byzantine Culture Group
	(/^\s*byzantine = ".*"/) ||
	(/^\s*armenian = ".*"/) ||
	(/^\s*greek = ".*"/) ||
	(/^\s*alan = ".*"/) ||
	(/^\s*georgian = ".*"/) ||
	(/^\s*sicilian_greek = ".*"/) ||
#Celtic Culture Group
	(/^\s*celtic = ".*"/) ||
	(/^\s*irish = ".*"/) ||
	(/^\s*scottish = ".*"/) ||
	(/^\s*welsh = ".*"/) ||
	(/^\s*breton = ".*"/) ||
	(/^\s*cornish = ".*"/) ||
	(/^\s*gallawa = ".*"/) ||
#Finno Ugric Culture Group
	(/^\s*finno_ugric = ".*"/) ||
	(/^\s*finnish = ".*"/) ||
	(/^\s*lappish = ".*"/) ||
	(/^\s*ugricbaltic = ".*"/) ||
	(/^\s*komi = ".*"/) ||
	(/^\s*samoyed = ".*"/) ||
	(/^\s*mordvin = ".*"/) ||
#Baltic Culture Group
	(/^\s*baltic = ".*"/) ||
	(/^\s*lettigallish = ".*"/) ||
	(/^\s*lithuanian = ".*"/) ||
	(/^\s*prussian = ".*"/) ||
#Altaic Culture Group
	(/^\s*altaic = ".*"/) ||
	(/^\s*turkish = ".*"/) ||
	(/^\s*pecheneg = ".*"/) ||
	(/^\s*cuman = ".*"/) ||
	(/^\s*khazar = ".*"/) ||
	(/^\s*bolghar = ".*"/) ||
	(/^\s*avar = ".*"/) ||
	(/^\s*mongol = ".*"/) ||
#Arabic Culture Group
	(/^\s*arabic = ".*"/) ||
	(/^\s*bedouin_arabic = ".*"/) ||
	(/^\s*maghreb_arabic = ".*"/) ||
	(/^\s*levantine_arabic = ".*"/) ||
	(/^\s*egyptian_arabic = ".*"/) ||
	(/^\s*andalusian_arabic = ".*"/) ||
	(/^\s*sicilian_arabic = ".*"/) ||
#East Slavic Culture Group
	(/^\s*east_slavic = ".*"/) ||
	(/^\s*russian = ".*"/) ||
	(/^\s*volga_slav = ".*"/) ||
	(/^\s*dnepr_slav = ".*"/) ||
	(/^\s*dnestr_slav = ".*"/) ||
#West Slavic Culture Group
	(/^\s*west_slavic = ".*"/) ||
	(/^\s*pommeranian = ".*"/) ||
	(/^\s*bohemian = ".*"/) ||
	(/^\s*polish = ".*"/) ||
#South Slavic Culture Group
	(/^\s*south_slavic = ".*"/) ||
	(/^\s*croatian = ".*"/) ||
	(/^\s*serbian = ".*"/) ||
	(/^\s*romanian = ".*"/) ||
	(/^\s*bulgarian = ".*"/) ||
#Magyar Culture Group
	(/^\s*magyar = ".*"/) ||
	(/^\s*hungarian = ".*"/) ||
#Iranian Culture Group
	(/^\s*iranian = ".*"/) ||
	(/^\s*persian = ".*"/) ||
	(/^\s*kurdish = ".*"/) ||
#East African Culture Group
	(/^\s*east_african = ".*"/) ||
	(/^\s*ethiopian = ".*"/) ||
	(/^\s*nubian = ".*"/) ||
	(/^\s*somali = ".*"/) ||
#West African Culture Group
	(/^\s*west_african = ".*"/) ||
	(/^\s*manden = ".*"/) ||
	(/^\s*sosso = ".*"/) ||
	(/^\s*jolof = ".*"/) ||
	(/^\s*bafour = ".*"/) ||
#Meso American Culture Group	
	(/^\s*mesoamerican = ".*"/) ||
	(/^\s*nahuatl = ".*"/) ||
#Judaic Culture Group
	(/^\s*judaic = ".*"/) ||
	(/^\s*sephardic = ".*"/) ||	
	(/^\s*ashkenazi = ".*"/) ||
	(/^\s*mizrahim = ".*"/) ||
#Crusader Culture Group
	(/^\s*crusader_group = ".*"/) ||
	(/^\s*outremer = ".*"/) ||
	(/^\s*latin = ".*"/);
#White space line eater
# || (/^\s*$/)
  print OUT $_;            # process data
};

#while(<FILE>) {
#  next if /^\s*$/;
#  print OUT $_;
#}

close FILE; close OUT;
rename("05_kingdoms.txt", "05_kingdoms.bak")
  or die "Error in rename: $!\n";
rename("05_kingdoms.tmp", "05_kingdoms.txt")
  or die "Error in rename: $!";
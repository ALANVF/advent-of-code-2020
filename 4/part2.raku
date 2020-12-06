say +"input.txt".IO.split("\n\n").grep:{
	?[&]
		/byr\:(\d+)/ && $0 ~~ 1920..2002,
		/iyr\:20[1\d|20]/,
		/eyr\:20[2\d|30]/,
		/hgt\:(\d+)[cm<?{$0 ~~ 150..193}>|in<?{$0 ~~ 59..76}>]/,
		/hcl':#'<xdigit>**6/,
		/ecl\:[amb|blu|brn|gry|grn|hzl|oth]/,
		/pid\:\d**9>>/
}
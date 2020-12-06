my@g="input.txt".IO.lines.map(*.comb.map(*eq"#"));
sub f(\c,\r=1){+@g[0,r...*].pairs.grep({.value[(.key*c)mod 31]});}
say [*] f(1,2),|<1 3 5 7>>>.&f
say "input.txt".IO.lines>>.&{/(\d+).(\d+).(.)..(.+)/&&so$3.comb[($0^$1)-1]eq$2}.sum
f = open("./data/hightemp.txt")
for line in readlines(f)
  replace(line, "\t"　=>　" ")
  println(line)
end
close(f)

#=
$ cat ./data/hightemp.txt | sed s/$'\t'/' '/g
=#
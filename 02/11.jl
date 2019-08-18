f = open("hightemp.txt")
for line in readlines(f)
  replace(line, "\t"　=>　" ")
  println(line)
end
close(f)

#=
$ cat hightemp.txt | sed s/$'\t'/' '/g
=#
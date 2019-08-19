col1 = open("./data/col1.txt")
col2 = open("./data/col2.txt")
merge = open("./data/merge.txt", "w")

for line in readlines(col1)
  c1 = chomp(line)
  c2 = chomp(readline(col2))
  println(merge, join([c1,c2], "\t"))
end

close(col1)
close(col2)
close(merge)

#=
$ paste -d '\t' <(cut -f 1 ./data/hightemp.txt) <(cut -f 2 ./data/hightemp.txt)
=#
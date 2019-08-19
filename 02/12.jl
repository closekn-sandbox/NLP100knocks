f = open("./data/hightemp.txt")
col1 = open("./data/col1.txt","w")
col2 = open("./data/col2.txt","w")

for line in readlines(f)
  col = split(chomp(line), "\t")
  println(col1,col[1])
  println(col2,col[2])
end

close(f)
close(col1)
close(col2)

#=
$ cut -f 1 ./data/hightemp.txt
$ cut -f 2 ./data/hightemp.txt
=#
f = open("./data/hightemp.txt", "r")

pref = Set()
for line in readlines(f)
  col1 = split(line, "\t")[1]
  push!(pref,col1)
end
println(pref)

close(f)

#=
$ cut -f 1 ./data/hightemp.txt | sort | uniq
=#
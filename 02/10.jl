f = open("./data/hightemp.txt")
println(countlines(f))
close(f)

#= Unix
$ wc -l ./data/hightemp.txt
=#
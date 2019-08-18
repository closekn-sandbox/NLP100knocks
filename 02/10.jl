f = open("hightemp.txt")
println(countlines(f))
close(f)

#= Unix
$ wc -l hightemp.txt
=#
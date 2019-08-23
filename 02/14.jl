f = open("./data/hightemp.txt")
n = parse(Int, ARGS[1])

for i in 1:n
  if !eof(f)
    l = readline(f)
    println(l)
  end
end

close(f)

#=
$ haed -n <number> ./data/hightemp.txt
=#
f = open("./data/hightemp.txt", "r")
freq = Dict{String,Int64}()

for line in readlines(f)
  col1 = split(line, "\t")[1]
  freq[col1] = get(freq, col1, 0) + 1
end

for elem in sort(collect(freq), by = tuple -> last(tuple), rev=true)
  println(join(elem,  "\t"))
end

#=
$ cut -f1 ./data/hightemp.txt | sort | uniq -c | sort -r
=#
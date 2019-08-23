f = open(readlines, "./data/hightemp.txt")
n = parse(Int, ARGS[1])

filelength = length(f)
if n > filelength
  n = filelength
end
s = filelength - n + 1

for l in f[s:filelength]
  println(l)
end

#=
$ tail -n <number> ./data/hightemp.txt
=#
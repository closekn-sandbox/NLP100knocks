f = open("./data/hightemp.txt")
n = parse(Int, ARGS[1])
filelength = countlines(f)
f = seekstart(f)
sepa = Int(trunc(filelength / n))
mod = filelength % n

for i in 1:n
  out = open("./split/"*string(i)*".txt", "w")
  lines = sepa
  if i <= mod
    lines = sepa + 1
  end

  for j in 1:lines
    println(out,readline(f))
  end
  close(out)
end

close(f)

#=
split ./data/hightemp.txt -l 10 -d ./split/
=#
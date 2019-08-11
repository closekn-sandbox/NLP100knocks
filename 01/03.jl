s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
list = []

for w = split(s, r"[,\. ] ?", keepempty=false)
  push!(list, length(w))
end
println(list)
function make_str(x, y, z)
  string(x) * "時の" * string(y) * "は" * string(z)
end

X = 12
Y = "気温"
Z = 22.4

println(make_str(X, Y, Z))
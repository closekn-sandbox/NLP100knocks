function n_gram(s, n)
  [s[i:(i + n - 1)] for i in 1 : length(s) - n + 1]
end

str1 = "paraparaparadise"
str2 = "paragraph"

X = n_gram(str1, 2)
Y = n_gram(str2, 2)

println(X)
println(Y)
println(X ∩ Y)          # 積集合
println(X ∪ Y)          # 和集合
println(setdiff(X, Y))  # 差集合 X-Y
println(setdiff(Y, X))  # 差集合 Y-X

println(findall(X.== "se"))
println(findall(Y.== "se"))

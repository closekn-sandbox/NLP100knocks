str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
list = split(str, r"[,\. ] ?", keepempty=false)
single = [1, 5, 6, 7, 8, 9, 15, 16, 19]
dict = Dict()

for i = 1:length(list)
  tmp = list[i]
  dict[tmp[1:(i in single ? 1 : 2)]] = i
end

println(dict)
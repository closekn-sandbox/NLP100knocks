function n_gram(s, n)
  [s[i:(i + n - 1)] for i in 1 : length(s) - n + 1]
end

str = "I am an NLPer"

list_char = n_gram(str, 2)
list_word = n_gram(split(str), 2)

println(list_char)
println(list_word)

function random_permutation(str::String)
  randnum_dict = Dict(zip(rand(Int, length(str)), str))
  permutated_arr = sort(collect(randnum_dict))
  permed = ""
  for c in permutated_arr
      permed *= c[2]
  end
  permed
end

function typoglycemia(txt)
  words = split(txt)
  str = ""
  for w in words
    if length(w) > 4
      w_middle = string(w[2:end-1])
      w = w[1] * random_permutation(w_middle) * w[end]
    end
    str *= w * ' '
  end
  str
end

test_txt = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
println(typoglycemia(test_txt))
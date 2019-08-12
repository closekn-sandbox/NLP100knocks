function cipher(txt)
  str = ""
  for c in txt
    if c in 'a':'z'
      str *= Char(219 - codepoint(c))
    else
      str *= c
    end
  end
  str
end

test_txt = "I am an NLPer"
println(cipher(test_txt))
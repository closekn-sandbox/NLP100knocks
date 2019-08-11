str1 = "パトカー"
str2 = "タクシー"

str = string(( a * b for (a, b) in zip(str1, str2))... )

println(str)
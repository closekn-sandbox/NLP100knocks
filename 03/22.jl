using JSON
wikidata = open("./data/jawiki-country.json", "r")

seek(wikidata, 0)
txt = ""
for l in eachline(wikidata)
  entry = JSON.parse(l)
  entry_title = entry["title"]
  entry_txt = entry["text"]
  if (entry_title == "イギリス")
    global txt *= entry_txt
    break
  end
end

match_arr = eachmatch(r"\[\[Category:([^\W]+).*\]\]\n?", txt)
category_name = map(m->m.captures[1], match_arr)

for c in category_name
  println(c)
end
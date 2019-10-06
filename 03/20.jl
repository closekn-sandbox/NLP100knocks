using JSON
wikidata = open("./data/jawiki-country.json", "r")

seek(wikidata, 0)
txt = ""
for l in eachline(wikidata)
  entry = JSON.parse(l)
  title = entry["title"]
  txt = entry["text"]
  if (title == "イギリス")
    print(txt)
    break
  end
end
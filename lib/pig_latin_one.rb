def pig_latin_one(string)
  string.downcase.split.map! { |word| (["a", "e", "i", "o", "u"].include?(word[0])) ? word << "way" : word.match(/^[squ]*[qu]*[bcdfghjklmnpqrstvwxyz]*(.+)/)[1] << word.match(/^(squ|qu|[bcdfghjklmnpqrstvwxyz]+)/)[0] << "ay" }.join(" ")
end
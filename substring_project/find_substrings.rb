def find_substrings(string, dictionary)
  words = string.downcase.split(" ")
  hash = Hash.new(0)

  dictionary.each do |word|
    words.each do |w|
      if w.include?(word)
        hash[word] += 1
      end
    end
  end

  hash
end
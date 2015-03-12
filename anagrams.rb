def anagrams_for(word, dictionary)
  matches = []
  anagram = word.downcase.split('').sort.join('')
  dictionary.each do |words|
    sorted = words.downcase.split('').sort.join('')
    if sorted == anagram
      matches << words
    end
  end
  return matches
end
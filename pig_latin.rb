def pig_latin(input)
  if input =~ /\A[aeiou]/
    input
  else
    input =~ /\A[^aeiou]/
    consonants = (/\A[^aeiou]*/.match(input)).to_s
    rest_of_string = input[consonants.length..-1]
    rest_of_string + consonants + "ay"
  end
end

def convert_sentence(sentence)
  sentence = gets.chomp
  array = sentence.split(" ")
  array.map! {|word| pig_latin(word)}
  p array
end

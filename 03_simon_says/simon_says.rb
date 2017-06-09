#write your code here

def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, times=2)
  Array.new(times, phrase).join(' ')
end

def start_of_word(word, number_of_letters)
  word[0..number_of_letters - 1]
end

def first_word(phrase)
  phrase.split(' ').first
end

def titleize(phrase)
  little = %w(and over the) 

  words = phrase.split(' ')
  words.first.capitalize!

  words.map { |word| little.include?(word) ? word : word.capitalize }.join(' ')
end

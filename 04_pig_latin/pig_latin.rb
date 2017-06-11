#write your code here

def translate(text)
  if text.split(' ').size > 1
    text.split(' ').map { |word| translate_word(word) }.join(' ')
  else
    translate_word(text)
  end
end

private

def translate_word(word)
  word_letters = word.split('')
  vowels = %w{a e i o u}

  while (!vowels.include? word_letters.first) do
    displaced_letter = displace_letter(word_letters)

    if displaced_letter.eql?('q') && word_letters.first.eql?('u')
      displace_letter(word_letters)
    end
  end
  "#{word_letters.join}ay"
end

def displace_letter(word_letters)
  letter = word_letters.shift
  word_letters.push(letter)
  letter
end

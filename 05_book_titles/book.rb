class Book
# write your code here
  DO_NOT_CAPITALIZE = %w( and in the of a an )

  attr_reader :title

  def title=(string)
    words = string.split(' ')
    capitalized = words.map do |word|
      DO_NOT_CAPITALIZE.include?(word) ? word : word.capitalize
    end
    capitalized.first.capitalize!
    @title = capitalized.join(' ')
  end
end

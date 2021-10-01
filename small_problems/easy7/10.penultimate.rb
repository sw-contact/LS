def middle_word(str)
  words = str.split
  middle_word = words.size / 2
  return str if words.size <= 2

  words.size.odd? ? words[middle_word] : words[middle_word - 1, 2].join(' ')
end

p middle_word('last word')
p middle_word('Launch School is great!')
p middle_word('Hello hi hey yo')
p middle_word('hey hello')
p middle_word('hi')
p middle_word('To keep track of whether we ought want to upcase or downcase')
p middle_word('')


=begin
def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
=end
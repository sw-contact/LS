def swap_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  new_str = str.split.map do |word|
    swap_letters(word)
  end
  new_str.join(' ')
end


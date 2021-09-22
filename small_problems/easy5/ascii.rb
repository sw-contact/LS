def ascii_value(str)
  arr_chars = str.chars.map do |letter|
    letter.ord
  end
  arr_chars.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
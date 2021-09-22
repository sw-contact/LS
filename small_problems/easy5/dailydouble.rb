def crunch(str)
  index = 0
  new_str = ''
  while index <= str.length - 1
    new_str << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  new_str
end

p crunch('ddaaiillyy ddoouubbllee')
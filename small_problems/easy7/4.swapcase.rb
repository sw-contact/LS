def swapcase(str)
  new_str = str.chars.map do |letter|
    if letter =~ /[a-z]/
      letter.upcase
    elsif letter =~ /[A-Z]/
      letter.downcase
    else
      letter
    end
  end
  new_str.join
end

=begin
def swapcase(str)
  str.split.map do |word|
    word.chars.each do |letter|
      if ('a'..'z').to_a.include?(letter)
        letter.upcase!
      elsif ('A'..'Z').to_a.include?(letter)
        letter.downcase!
      end
    end.join
  end.join(' ')
end
=end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
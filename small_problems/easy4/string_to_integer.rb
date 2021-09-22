INTEGERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  integers = str.chars.map { |char| INTEGERS[char] }

  value = 0
  integers.each { |integer| value = 10 * value + integer }
  value
end

def signed_integer(str)
  if str[0] == '-'
    unsigned_str = str.delete('-')
    -string_to_integer(unsigned_str)
  elsif str[0] == '+'
    unsigned_str = str.delete('+')
    string_to_integer(unsigned_str)
  else
    string_to_integer(str)
  end
end


=begin
def hexadecimal_to_integer(str)
=end

p signed_integer('-123')
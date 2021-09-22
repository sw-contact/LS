DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  str_number = ''
  loop do
    integer, remainder = integer.divmod(10)
    str_number.prepend(DIGITS[remainder])
    break if integer == 0
  end
  str_number
end

=begin
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
=end

=begin
def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then "-#{integer_to_string(-integer)}"
  when +1 then "+#{integer_to_string(integer)}"
  else integer_to_string(integer)
  end
end
=end

def signed_integer_to_string(integer)
  if integer > 0
    "+#{integer_to_string(integer)}"
  elsif integer < 0
    "-#{integer_to_string(-integer)}"
  else
    integer_to_string(integer)
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)
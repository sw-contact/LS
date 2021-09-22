=begin
def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')
=end

=begin
def palindrome_arr?(arr)
  arr == arr.reverse
end

p palindrome_arr?([1, 2, 3])
p palindrome_arr?([1, 2, 3, 2, 1])
=end

=begin
def palindrome_any?(input)
  input == input.reverse
end

p palindrome_any?("madam")
p palindrome_any?([1, 2, 3, 2, 1])
=end

=begin
def real_palindrome?(str)
  str_alphanum = str.downcase.delete "^a-b0-9"
  str_alphanum == str_alphanum.reverse
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?("Madam!  i'm adam!")
p real_palindrome?('123ab321')
=end

def palindromic_number?(integer)
  integer.to_s.reverse.to_i == integer
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
# IGNORES NON-ALPHA NUM AND CASE #

def substrings(str)
  str_alphanum = str.gsub(/[^A-Za-z0-9]/, '')
  str_array = str_alphanum.chars
  new_strs = []
  loop do
    break if str_array.empty?
    1.upto(str_array.size) do |count|
      new_strs << str_array.slice(0, count).join
    end
    str_array.shift
  end
  new_strs
end

def palindrome?(string)
  string.downcase == string.downcase.reverse && string.size > 1
end

def palindromes(string)
  all_strings = substrings(string)
  palindrome_array = []
  all_strings.each do |sub_string|
    palindrome_array << sub_string if palindrome?(sub_string)
  end
  palindrome_array
end


# DOES NOT IGNORE NON-ALPHA NUM AND CASE #
=begin
def substrings(str)
  str_array = str.chars
  new_strs = []
  loop do
    break if str_array.empty?
    1.upto(str_array.size) do |count|
      new_strs << str_array.slice(0, count).join
    end
    str_array.shift
  end
  new_strs
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_strings = substrings(string)
  palindrome_array = []
  all_strings.each do |sub_string|
    palindrome_array << sub_string if palindrome?(sub_string)
  end
  palindrome_array
end
=end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')
=begin == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
=end
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
p palindromes('abBa')
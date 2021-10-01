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

=begin (Launch School solution for reference)
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end
=end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
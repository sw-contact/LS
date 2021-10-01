def leading_substrings(str)
  str_array = str.chars
  new_strs = []
  1.upto(str_array.size) do |count|
    new_strs << str_array.slice(0, count).join
  end
  new_strs
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
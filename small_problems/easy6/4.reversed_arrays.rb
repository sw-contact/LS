def reverse!(arr)
  return arr if arr.empty?
  temp_arr = []
  loop do
    temp_arr << arr.pop
    break if arr.empty?
  end

  loop do
    arr << temp_arr.shift
    break if temp_arr.empty?
  end
  arr
end

list = [1,1,1,2,3,3,4]
result = reverse!(list)
p result == [4, 3, 3, 2, 1, 1, 1] # true
p list == [4, 3, 3, 2, 1, 1, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

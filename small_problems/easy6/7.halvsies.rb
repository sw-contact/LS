def halvsies(arr)
  if arr.size == 1
    arr.each_slice(1).to_a << []
  elsif arr.size == 0
    2.times { arr << [] }
    arr
  elsif arr.size % 2 == 0
    arr.each_slice(arr.size/2).to_a
  else
    arr.each_slice((arr.size/2) + 1).to_a
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1, 2, 3, 4, 5, 6, 7])
=begin
def interleave(arr1, arr2)
  new_array = []
  loop do
    new_array << arr1.shift
    new_array << arr2.shift
    break if arr2.empty?
  end
  new_array
end
=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

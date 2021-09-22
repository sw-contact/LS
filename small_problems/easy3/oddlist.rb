=begin
def oddities(arr)
  new_arr = []
  arr.each_with_index do |element, index|
    new_arr << element if index.even?
  end
  new_arr
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
=end

=begin
def oddities(arr)
  new_arr = []
  index = 0
  while index < arr.size
    new_arr << arr[index]
    index += 2
  end
  new_arr
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
=end

def oddities(arr)
  arr.select do |element|
    arr.index(element).even?
  end
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
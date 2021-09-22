=begin
def running_total(arr)
  total = 0
  arr.map { |element| total += element}
end
=end

=begin
def running_total(arr)
  total = 0
  arr.each_with_object([]) { | num, array | array << total += num }
end
=end

def running_total(arr)
  arr.reduce([]) { | new_array, num | new_array << (new_array.last.to_i + num) }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
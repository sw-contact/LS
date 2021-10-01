=begin
def sum_of_sums(arr)
  sum_total = 0
  1.upto(arr.size) do |arr_count|
    sum_total += arr.slice(0, arr_count).inject(:+)
  end
  sum_total
end
=end

def sum_of_sums(arr)
  sum_total = 0
  sums = 0

  arr.each do |num|
    sums += num
    sum_total += sums
  end

  sum_total
end


=begin
def sum_of_sums(arr)
  index_counter = 1
  sums_array = [arr[0]]
  return arr[0] if arr.size == 1
  loop do
    sums_array << arr[0..index_counter].sum
    index_counter += 1
    break if index_counter == arr.size
  end
  sums_array.sum
end
=end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

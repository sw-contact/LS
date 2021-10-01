=begin
def multiply_list(arr1, arr2)
  new_array = []
  arr1.each_with_index do |value, index|
    new_array << value * arr2[index]
  end
  new_array
end
=end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
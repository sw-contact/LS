=begin
def buy_fruit(arr)
  arr.map { |fruit, qty| [fruit] * qty }.flatten
end
=end

def buy_fruit(arr)
  arr.flat_map { |fruit, qty| [fruit] * qty }
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
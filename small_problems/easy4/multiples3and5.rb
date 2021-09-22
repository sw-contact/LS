=begin
def multisum(num)
  (1..num).select { |num| num % 3 == 0 || num % 5 == 0 }.sum
end
=end

def multisum(num)
  (1..num).reduce(0) { |sum, n| (n % 3 == 0 || n % 5 == 0) ? sum + n : sum }
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

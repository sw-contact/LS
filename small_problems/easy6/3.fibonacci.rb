def find_fibonacci_index_by_length(digit_length)
  fibonacci_sequence = [1, 1]
  counter1 = 0
  counter2 = 1
  loop do
    fibonacci_sequence << fibonacci_sequence[counter1] + fibonacci_sequence[counter2]
    counter1 += 1
    counter2 += 1
    break if fibonacci_sequence.last.to_s.length >= digit_length
  end
  fibonacci_sequence.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
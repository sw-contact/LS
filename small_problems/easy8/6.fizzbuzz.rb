def fizzbuzz(num1, num2)
  result_array = []
  num1.upto(num2) do |integer|
    result_array << fizzbuzz_num(integer)
  end
  puts result_array.join(', ')
end

def fizzbuzz_num(num)
  case
  when num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  when num % 5 == 0
    "Buzz"
  when num % 3 == 0
    "Fizz"
  else
    num
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
def prompt(number)
  puts "==> Enter the #{number} number:"
end

prompt("1st")
first_num = gets.chomp.to_i
prompt("2nd")
second_num = gets.chomp.to_i
prompt("3rd")
third_num = gets.chomp.to_i
prompt("4th")
fourth_num = gets.chomp.to_i
prompt("5th")
fifth_num = gets.chomp.to_i
prompt("6th")
last_num = gets.chomp.to_i

arr = [first_num, second_num, third_num, fourth_num, fifth_num]

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}"
else
  puts "The number #{last_num} does not appears in #{arr}"
end

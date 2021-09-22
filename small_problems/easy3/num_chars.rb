puts "Please write a word or multiple words:"
input = gets.chomp

puts "#{input.split.join.split('').count}"

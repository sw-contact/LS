#room_area_calculator.rb

puts "===>  Enter the length of the room in meters:"
length = gets.chomp
puts "===> Enter the width of the room in meters:"
width = gets.chomp
area_meters = length.to_f * width.to_f
area_feet = (area_meters * 10.7639).round(2)

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."


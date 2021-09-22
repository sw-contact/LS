#Sum or product of consecutive integers

loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.chomp
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_prod = gets.chomp

  if integer.to_i > 0 && ( sum_or_prod == 's'|| sum_or_prod == 'p' )
    case sum_or_prod
    when 's'
      puts (1..integer.to_i).sum
    else
      puts (1..integer.to_i).reduce { |product, num| product * num }
    end
    break
  else
    puts ">> Input error: please enter an integer > 0 and sum or product"
  end
end

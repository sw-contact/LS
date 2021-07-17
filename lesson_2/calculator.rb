# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

=begin
integer has to be converted to a float for division
=end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Please enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt "Make sure to enter a valid name."
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # this is the MAIN LOOP
  number1 = ""
  number2 = ""

  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp() # we don't call to_i method here, why?
    if valid_number?(number1)
      break
    else
      prompt("Hmmm, that doesn't look like a valid number")
    end
  end

  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmmm, that doesn't look like a valid number")
    end
  end

  operator_prompt =
    <<-MSG
      What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose a valid operation (1, 2, 3, or 4)")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  case operator
  when "1"
    result = number1.to_i + number2.to_i
  when "2"
    result = number1.to_i - number2.to_i
  when "3"
    result = number1.to_i * number2.to_i
  when "4"
    result = number1.to_f / number2.to_f
  end

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? (Enter 'Y' to calculate)")
  input = Kernel.gets().chomp()
  break unless input.downcase().start_with?('y')
end

prompt("Thank you for using the calculator!")

=begin
def print_in_box(str)
  line1 = "+--+"
  str.length.times { line1.insert(1, '-') }
  line2 = "|  |"
  str.length.times { line2.insert(1, ' ') }
  str_line = "| #{str} |"
  puts "#{line1}\n#{line2}\n#{str_line}\n#{line2}\n#{line1}"
end

print_in_box("Light cannot be chained!")
print_in_box("The Wheel weaves as the Wheel wills.")
puts "#{"-" * 100}"
=end

=begin
def print_in_box(str)
  if str.length > 76
    loop do
      str.delete!(str[-1])
      break if str.length <= 76
    end
  end
  line1 = "+--+"
  str.length.times { line1.insert(1, '-') }
  line2 = "|  |"
  str.length.times { line2.insert(1, ' ') }
  str_line = "| #{str} |"
  puts "#{line1}\n#{line2}\n#{str_line}\n#{line2}\n#{line1}"
end

print_in_box("Light cannot be chained!")
print_in_box("The Wheel weaves as the Wheel wills.")
print_in_box("Hello Hello Hello Hello Hello The Wheel weaves as the Wheel wills.The Wheel weaves as the Wheel wills.")
=end

def print_in_box(str)
  max_middle_space = str.length <= 76 ? str.length : 76
  puts "+-#{'-' * max_middle_space }-+"
  puts "| #{' ' * max_middle_space } |"

  while str.length > 76 do
    banner_str_beginning = str.slice!(/.{,75}\s/)
    puts "| #{banner_str_beginning + (' ' * (max_middle_space - banner_str_beginning.length))} |"
  end

  puts "| #{str + (' ' * (max_middle_space - str.length))} |"

  puts "| #{' ' * max_middle_space } |"
  puts "+-#{'-' * max_middle_space }-+"
end

print_in_box("Being an annoyance is something that I am very good at.In fact, I’m far more than just a ‘mild’ annoyance--people tell me I can be downright frustrating.Might as well use this talent for the cause of good, eh?")
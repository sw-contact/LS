def prompt(str)
  puts "Enter #{str}: "
end

prompt("a noun")
noun = gets.chomp

prompt("a verb")
verb = gets.chomp

prompt("an adjective")
adjective = gets.chomp

prompt("an adverb")
adverb = gets.chomp

puts "Where do you see a #{adjective} #{noun} #{verb} #{adverb}?"

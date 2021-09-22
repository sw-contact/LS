=begin

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
flintstones.each_with_index do | item, index|
  hash[item] = index
end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.values.sum

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0
ages.each { | member, age | total_ages += age }
p total_ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.select { | member, age| age < 100 }

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.sort[0][1]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0..1] == "Be" }

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.map { |name| name[0..2] }

=end

words = "the flintstones rock"
p words.split.map { |word| word.capitalize }.join(' ')

=begin

statement = "The Flintstones Rock"

letters = ('a'..'z').to_a + ('A'..'Z').to_a
letter_count = {}

letters.each do |letter|
  letter_freq = statement.count(letter)
  letter_count[letter] = letter_freq if letter_freq > 0
end

p letter_count

=end
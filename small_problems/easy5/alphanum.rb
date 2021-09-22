=begin
NUM_HSH_0_TO_19 = {
  0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
  6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
  11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
  15 => "fiften", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
  19 => "nineteen"
}

def alphabetic_number_sort(arr)
  arr.sort_by do |num|
    NUM_HSH_0_TO_19[num]
  end
end

p alphabetic_number_sort((0..19).to_a)
p NUM_HSH_0_TO_19
=end

NUM_HSH_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by! do |num|
    NUM_HSH_WORDS[num]
  end
end

p alphabetic_number_sort((0..19).to_a)
p NUM_HSH_WORDS

=begin
def alphabetic_number_sort(arr)
  arr.sort do |a, b|
    NUM_HSH_WORDS[a] <=> NUM_HSH_WORDS[b]
  end
end

p alphabetic_number_sort((0..19).to_a)
=end
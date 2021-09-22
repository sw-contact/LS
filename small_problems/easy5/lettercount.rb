=begin
def word_sizes(str)
  arr_word_length = str.split.map { |word| word.length }

  unique_word_count = arr_word_length.uniq

  hsh_word_count = {}

  unique_word_count.each do |num|
    hsh_word_count[num] = arr_word_length.count(num)
  end

  hsh_word_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
=end

def word_sizes(str)
  arr_word_length = str.gsub(/[^a-z^A-Z^ ]/, '').split.map { |word| word.length }

  unique_word_count = arr_word_length.uniq

  hsh_word_count = {}

  unique_word_count.each do |num|
    hsh_word_count[num] = arr_word_length.count(num)
  end

  hsh_word_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
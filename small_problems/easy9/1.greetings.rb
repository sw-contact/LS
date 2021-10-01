def greetings(arr, hash)
  "Hi, #{arr.join(' ')}, nice to meet a #{hash[:title]} #{hash[:occupation]}."
end


p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
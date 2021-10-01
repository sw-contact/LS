=begin
def double_consonants(str)
  str.chars.map do |char|
    if char =~ /[b-df-hj-np-tv-z]/i
      char * 2
    else
      char
    end
  end.join
end
=end

def double_consonants(str)
  str.gsub(/[b-df-hj-np-tv-z]/i) { |char| char * 2 }
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
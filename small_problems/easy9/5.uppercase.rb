def uppercase?(str)
  str == str.upcase
end

=begin
def uppercase?(str)
  str.chars.select {|char| char =~ /[A-Za-z]/ }.all? {|char| char =~ /[A-Z]/}
end
=end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
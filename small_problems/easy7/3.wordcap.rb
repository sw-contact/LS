def word_cap(str)
  str.split.map { |word| word.downcase.sub(word[0], word[0].upcase) } .join(' ')
end

=begin
def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end
=end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
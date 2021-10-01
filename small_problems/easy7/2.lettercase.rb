def letter_case_count(str)
  letter_count_hash = Hash.new
  letter_count_hash[:lowercase] = str.scan(/[a-z]/).count
  letter_count_hash[:uppercase] = str.scan(/[A-Z]/).count
  letter_count_hash[:neither] = str.scan(/[^A-Za-z]/).count
  letter_count_hash
end

p letter_case_count('abCdef 123') # == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') # == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') # == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') # == { lowercase: 0, uppercase: 0, neither: 0 }
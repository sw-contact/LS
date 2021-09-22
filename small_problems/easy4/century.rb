def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + suffix(century)
end

def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_year = century % 10

  case last_year
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103)
p century(1052)
p century(1127)
p century(11201)
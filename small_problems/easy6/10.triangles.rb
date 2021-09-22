def triangle_right_bottom(num)
  (num + 1).times {|x| puts ('*' * x).rjust(num)}
end

def triangle_left_bottom(num)
  (num + 1).times {|x| puts ('*' * x).ljust(num)}
end

def triangle_right_top(num)
  (0..num).reverse_each {|x| puts ('*' * x).rjust(num)}
end

def triangle_left_top(num)
  (0..num).reverse_each {|x| puts ('*' * x).ljust(num)}
end

RT = 'Right Top'
RB = 'Right Bottom'
LT = 'Left Top'
LB = 'Left Bottom'

def triangle_any(num, corner)
  case corner
  when RB
    triangle_right_bottom(num)
  when LB
    triangle_left_bottom(num)
  when RT
    triangle_right_top(num)
  when LT
    triangle_left_top(num)
  end
end

triangle_any(10, RT)
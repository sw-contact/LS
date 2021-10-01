def double_num?(arr)
  middle_index = arr.size/2 - 1
  arr.slice(0..middle_index) == arr.slice(middle_index + 1..-1)
end

def twice(int)
  int.digits.size.odd? ? int * 2 : (double_num?(int.digits) ? int : int * 2)
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10


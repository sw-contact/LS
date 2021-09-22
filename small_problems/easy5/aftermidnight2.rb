def after_midnight(str)
  if str == '00:00' || str == '24:00'
    total_min = 0
  else
    hour, min = str.split(':').map! { |num| num.to_i }
    total_min = hour * 60 + min
  end
  total_min
end


def before_midnight(str)
  if str == '00:00' || str == '24:00'
    total_min = 0
  else
    hour, min = str.split(':').map! { |num| num.to_i }
    total_min = 1440 - (hour * 60 + min)
  end
  total_min
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
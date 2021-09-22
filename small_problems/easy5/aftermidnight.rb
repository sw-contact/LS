def time_of_day(minutes)
  case minutes
  when minutes <= 1440
    time = minutes.divmod(60)
    p "#{"%02d" % time[0]}:#{"%02d" % time[1]}"
  when minutes > 1440
    time = minutes.remainder(1440).divmod(60)
    p "#{"%02d" % time[0]}:#{"%02d" % time[1]}"
  else
    p "Error"
  end
end

time_of_day(1339)

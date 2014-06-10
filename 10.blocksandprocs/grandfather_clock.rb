def grandfatherClock &block
  currentHour = Time.now.hour # from 0 to 23

  # adjust for PM
  if currentHour > 11
    currentHour = currentHour - 12
  end

  # 0 hour is actually 12:00 hour
  if currentHour == 0
    currentHour = 12
  end

  # do the thing that many times
  currentHour.times do
    block.call
  end
end

grandfatherClock do
  puts "DONG!"
end

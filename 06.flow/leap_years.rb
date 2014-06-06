puts "This program prints out all leap years between two given years."

puts "Please enter the starting year."
year1 = gets.chomp.to_i
puts "Please enter the ending year."
year2 = gets.chomp.to_i

if (year1 >= year2)
  puts "The starting year must come before the ending year."
  exit
end

puts "===LEAP YEARS:==="

while (year1 <= year2)
  if (year1 % 4 == 0)
    if ((year1 % 100 == 0) && (year1 % 400 != 0))
      year1 = year1 + 1
      next
    end
    puts year1
  end
  year1 = year1 + 1
end

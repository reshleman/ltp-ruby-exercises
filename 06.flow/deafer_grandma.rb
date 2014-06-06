puts "WHAT'S THAT, GRANDSON?"
response = gets.chomp
consec_byes = 0
while (consec_byes < 3)
  if (response == "BYE")
    consec_byes = consec_byes + 1
  else
    consec_byes = 0
  end
  if (response != response.upcase)
    puts "HUH!? SPEAK UP, SONNY!"
  else
    rand_year = rand(21) + 1930 #random year between 1930 and 1950
    puts "NO, NOT SINCE " + rand_year.to_s + "!"
  end 
  if (consec_byes < 3)
    response = gets.chomp
  end
end

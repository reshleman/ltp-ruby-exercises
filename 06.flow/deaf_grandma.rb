puts "WHAT'S THAT, GRANDSON?"
response = gets.chomp
while (response != "BYE")
 if (response != response.upcase)
   puts "HUH!? SPEAK UP, SONNY!"
 else
   rand_year = rand(21) + 1930 #random year between 1930 and 1950
   puts "NO, NOT SINCE " + rand_year.to_s + "!"
 end 
 response = gets.chomp
end

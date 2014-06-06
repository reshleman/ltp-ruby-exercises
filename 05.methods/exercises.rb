var1 = "Reverse me!"
puts var1
puts var1.reverse
puts ""
sentence = "The quick brown fox jumps over the lazy dogs."
puts sentence
puts "This sentence has " + sentence.length.to_s + " characters in it."
puts ""
letters = "aAbBcCdDeE"
puts letters
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ""
lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))
puts ""
lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth

puts "This program will accept any number of words, one per line, and print them out in alphabetical order."
words = []
word = gets.chomp
while word != ""
  words.push(word)
  word = gets.chomp
end
puts words.sort.join(", ")

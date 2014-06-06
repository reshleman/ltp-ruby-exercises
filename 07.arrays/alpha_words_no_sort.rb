puts "This program will accept any number of words, one per line, and print them out in alphabetical order."
words = []
word = gets.chomp
while word != ""
  words.push(word)
  word = gets.chomp
end

# Implement our own bubblesort before printing items...
# Merge sort would be faster, but more complex to code
last_index = words.length - 1
current_index = 0
while last_index > 0
  # Compare items from the beginning until the last unsorted item, switching if they're not in the right place
  while current_index < last_index
    if words[current_index] > words[current_index + 1]
      temp = words[current_index]
      words[current_index] = words[current_index + 1]
      words[current_index + 1] = temp
    end
    current_index = current_index + 1
  end
  # Start over again, with one fewer items to sort
  current_index = 0
  last_index = last_index - 1
end

puts words.join(", ")

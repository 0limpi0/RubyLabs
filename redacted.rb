# REDACTED
puts "Text to search: " 
text = gets.chomp # getting the user text
puts "Text to redact: "
redact = gets.chomp # getting the word to be redacted

words = text.split( " " ) # splitting the text into separated words making it an array

# iterating through the words array that we created earlier
words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
	end
end

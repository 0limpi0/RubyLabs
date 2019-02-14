print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What's your city? "
city = gets.chomp
city.capitalize!

print "What's your state or province? "
state = gets.chomp
state.upcase!


puts "Your name is #{first_name}, your last name is #{last_name}, you're from #{city}, your state or province is #{state}!"

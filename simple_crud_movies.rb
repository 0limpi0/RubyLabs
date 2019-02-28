# TODO: ADD COMMENTS EXPLAINING EACH LINE OF CODE

# A Night at the movies
movies = {
  civil_war: 5,
  }

puts "What do you want to do?"
puts "-- add a movie"
puts "-- update a movie"
puts "-- display all movies"
puts "-- delete a movie"

choice = gets.chomp.downcase

case choice
  when "add"
 	puts "What is the movie title?"
  title = gets.chomp.downcase
  puts "What is the movie new rating?"
  rating = gets.chomp
  if movies[title.to_sym].nil?
    movies[title.to_sym] = rating.to_i
    puts "The movie #{title} and rating of #{rating} was added!"
  else
    puts "That movie already exists"
  end
  when "update"
	puts "Whats the movie title your want to update?"
  title = gets.chomp.downcase
  
  if movies[title.to_sym].nil?
    puts "Movie not found"
  else
    puts "What is the new rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
   puts "The movie #{title} with the rating of #{rating} was updated"
  end
  when "display"
  movies.each do |title, rating|
    puts "#{title}: #{rating}"
  end
  when "delete"
  puts "Which movie do you want to delete?"
  title = gets.chomp.downcase
  
  if movies[title.to_sym].nil?
    puts "Movie not found"
  else
    movies.delete(title.to_sym)
    puts "The movie #{title} was deleted!"
  end
else
  puts "Please use an existing command"
end

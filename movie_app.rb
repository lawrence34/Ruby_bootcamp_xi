
#HASH HERE
movies = {
    #seeding the hash structure
    avengers: 3,
    ava: 4,
    plutonic: 6,
}

#seeding the hash structure

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

puts "choice??"
choice = gets.chomp.downcase.strip

case choice
  when 'add'  #branch one
    puts "Movie title?"
    title = gets.chomp.strip
    if movies[title.to_sym].nil?
      puts "Movie Rating? (Type a number 0 to 4.)"
      rating = gets.chomp.strip
      movies[title.to_sym] = rating.to_i
      puts "#{ title } added successfully with rating of #{ rating }."
    else
      puts "That movie already exist with #{ movies[title.to_sym] }."
    end

  when 'update'
    puts "Movie title?"
    title = gets.chomp.strip
    if movies[title.to_sym].nil?
      puts "#{ title } does not exist! try some other movie."
    else
      puts "You requested to update #{ title } with rating #{ movies[title.to_sym] }."
      puts "New movie's rating? (Type a number 0 to 4.)"
      new_rating = gets.chomp.strip
      movies[title.to_sym] = new_rating.to_i
    end
    puts "Updated!"

  when 'display'
    movies.sort.select { |key,val| puts "#{ key }:#{ val } -- #{ val.times{print "*"} }" }
    puts "#{ movies.count } movies."

  when 'delete'
    puts "Delete what movie?"
    delete_this = gets.chomp.strip
    if movies[delete_this.to_sym].nil?
      puts "#{ delete_this } does not exit, try some other movie"
    else
      movies.delete(delete_this.to_sym)
      puts "#{ delete_this } has been removed successfully"
    end
  else
    puts "Error! kindly use this app the right way!"
end

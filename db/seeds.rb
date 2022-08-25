# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'faker'
Movie.destroy_all
puts "Creating movie"

10.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Quote.famous_last_words,
    poster_url: Faker::LoremFlickr.image,
    rating: rand(1..5)
  )
  puts "Movie with id: #{movie.id} has been created"
end

puts "Finished movies!"


List.destroy_all
puts "Creating list"

3.times do
  list = List.create(
    name: Faker::Name.name
  )
  puts "Lists with id: #{list.id} has been created"
end
puts "Finished lists!"

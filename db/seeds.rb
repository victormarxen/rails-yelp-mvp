# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
asia_snack = { name: 'Asia Snack', address: 'Hong Kong', phone_number: '+4417456830', category: 'chinese' }
fries_world =  { name: 'Fries World', address: 'Brussels', phone_number: '+5567890432', category: 'belgian' }
pizza_paradise = { name: 'Pizza Paradise', address: 'Milan', phone_number: '+6648395784', category: 'italian' }
sushiko =  { name: 'Sushiko', address: 'Frankfurt', phone_number: '+4935678544', category: 'japanese' }
cafe_merci = { name: 'Cafe Merci', address: 'Paris', phone_number: '+99445566', category: 'french' }

[asia_snack, fries_world, pizza_paradise, sushiko, cafe_merci].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

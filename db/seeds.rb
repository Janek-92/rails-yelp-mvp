# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.create(
    name:    Faker::Company.name,
    address: Faker::Address.street_address,
    rating:  rand(0..5)
  )
  puts "restaurant #{restaurant.id} is created"
end
puts "done"


puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "Bristol", stars: 5 }
pizza_east =  { name: "Pizza East", address: "London", stars: 4 }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

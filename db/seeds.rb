# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts 'starting seeds'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do 
  index = rand(1..5)
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories[index]
  )
  restaurant.save!
  puts "#{restaurant.name} created"
end

puts 'seeds finished'
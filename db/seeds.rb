require 'faker'

puts "Cleaning the Database"

Restaurant.destroy_all

category = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating 10 fake Restaurants...'
10.times do
  restaurant = Restaurant.new(
    name: Faker::Superhero.name,
    address: Faker::Address.full_address,
    category: category[rand(0..4).to_i]
  )
  restaurant.save!
end
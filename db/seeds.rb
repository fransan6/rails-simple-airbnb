# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroyed database'
Flat.destroy_all

puts 'Creating database'

9.times do
  flat = Flat.create!(
    name: "#{%w[Flat House].sample} in #{%w[Beijing Tokyo Seoul].sample}",
    address: Faker::Games::Pokemon.location,
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    price_per_night: rand(50..100),
    number_of_guests: rand(2..6)
  )
  puts "Added restaurant id #{flat.id}"
end

puts 'Finished'

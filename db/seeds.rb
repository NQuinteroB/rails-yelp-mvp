# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."


# dishoom = [{ name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' },
# { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' },
# { name: 'Pizza west', address: 'address 1', category: 'japanese' },
# { name: 'Pizza north', address: 'address 2', category: 'belgian' },
# { name: 'Pizza south', address: 'address 3', category: 'chinese' }]

# dishoom.each do |attributes|
#   Restaurant.create!(attributes)
# end

require 'faker'
categories = %w[chinese italian japanese french belgian]

5.times do |number|
  Restaurant.create({
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: categories.sample,
    phone_number: Faker::PhoneNumber.cell_phone,
  })
puts number
  end

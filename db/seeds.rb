# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Clearing Database"
# Space.destroy_all

# puts "Generating Fake Database"

# puts "FIRST the USERS"

# User.create(
#   first_name: "Peter",
#   last_name: "Parker",
#   phone_number: Faker::PhoneNumber.cell_phone)

# User.create(
#   first_name: "Sam",
#   last_name: "Spaceown",
#   phone_number: Faker::PhoneNumber.cell_phone)

# puts "SECOND the SPACES"


# rate = [50, 100, 150]

# 5.times do
#   Space.create(
#   title: Faker::Address.street_name,
#   description: "Great place to park in #{Faker::Address.street_name}",
#   address: Faker::Address.street_name,
#   half_hour_rate: rate.sample,
#   availability: true)
# end

# puts "DB for USERS and SPACES created!"

User.create(
  first_name: "Peter",
  last_name: "Parker",
  phone_number: 102345789,
  email: "peter@parker.com",
  password: "123456")

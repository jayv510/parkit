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


# USERS

User.create(
  id: 1,
  first_name: "Peter",
  last_name: "Parker",
  phone_number: 123456789,
  email: "peter@parker.com",
  password: "123456")


User.create(
  id: 2,
  first_name: "Sam",
  last_name: "Spaceown",
  phone_number: 987654321,
  email: "sam@spaceown.com",
  password: "123456")



# SPACES

Space.create(
  user_id: 2,
  title: "Perfect Space To Park Your Private Jet",
  description: "Are you a private jet owner? Need a space to park your million dollars? Look no further!",
  address: "pudong international airport",
  half_hour_rate: 10000,
  availability: true)

Space.create(
  user_id: 2,
  title: "People's Square",
  description: "Lovely little parking spot right in the middle of People's Square. Exclusive!",
  address: "People's Square, Shanghai",
  half_hour_rate: 500,
  availability: true)

Space.create(
  user_id: 2,
  title: "World Financial Center Underground Parking",
  description: "Park underneath the tallest building in Shanghai!",
  address: "shanghai world financial center",
  half_hour_rate: 350,
  availability: true)

Space.create(
  user_id: 2,
  title: "Secure Off-street Parking in Hunan Rd",
  description: "Safe and secure parking spot behind a locked gate with CCTV",
  address: "hunan road, shanghai",
  half_hour_rate: 20,
  availability: true)

Space.create(
  user_id: 2,
  title: "Kerry Center Parking Lot",
  address: "Jing'an Kerry Center",
  description: "For those who love shopping but hate parking.",
  half_hour_rate: 50,
  availability: true)

Space.create(
  user_id: 2,
  title: "Private Space Near Four Seasons Hotel",
  description: "Adorable little parking space with views of the city.",
  address: "four seasons hotel shanghai",
  half_hour_rate: 60,
  availability: true)

Space.create(
  user_id: 2,
  title: "Exclusive Parking in Front of XinTianDi",
  description: "For those who are serious about eating upscale but hate walking.",
  address: "xintiandi, shanghai",
  half_hour_rate: 400,
  availability: true)

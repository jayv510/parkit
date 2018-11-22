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

User.delete_all

User.create(
  first_name: "Peter",
  last_name: "Parker",
  phone_number: 123456789,
  email: "peter@parker.com",
  password: "123456")


User.create(
  first_name: "Sam",
  last_name: "Spaceown",
  phone_number: 987654321,
  email: "sam@spaceown.com",
  password: "123456")



# SPACES

Space.delete_all

url_1 = "https://ibb.co/mdswhA"
url_2 = "https://ibb.co/ki5tUq"
url_3 = "https://ibb.co/gvgBFV"
url_4 = "https://ibb.co/gUPWFV"
url_5 = "https://ibb.co/cDE92A"
url_6 = "https://ibb.co/fjTDUq"
url_7 = "https://ibb.co/eh3rFV"


Space.create(
  user_id: User.last.id,
  title: "Jet Parking",
  description: "Are you a private jet owner?",
  address: "Pudong International Airport",
  half_hour_rate: 10000,
  availability: true,
  remote_photo_url: url_1)

Space.create(
  user_id: User.last.id,
  title: "People's Square",
  description: "Lovely little parking spot",
  address: "People's Square, Shanghai",
  half_hour_rate: 500,
  availability: true,
  remote_photo_url: url_2)

Space.create(
  user_id: User.last.id,
  title: "Financial Center",
  description: "Tallest building in Shanghai!",
  address: "Shanghai World Financial Center",
  half_hour_rate: 350,
  availability: true,
  remote_photo_url: url_3)

Space.create(
  user_id: User.last.id,
  title: "Hunan Rd",
  description: "Safe and secure parking spot",
  address: "Hunan Road, Shanghai",
  half_hour_rate: 20,
  availability: true,
  remote_photo_url: url_4)

Space.create(
  user_id: User.last.id,
  title: "Kerry Center Parking Lot",
  address: "Jing'an Kerry Center",
  description: "For those who love shopping",
  half_hour_rate: 50,
  availability: true,
  remote_photo_url: url_5)

Space.create(
  user_id: User.last.id,
  title: "Four Seasons Hotel",
  description: "Adorable little parking space",
  address: "Four Seasons Hotel Shanghai",
  half_hour_rate: 60,
  availability: true,
  remote_photo_url: url_6)

Space.create(
  user_id: User.last.id,
  title: "XinTianDi",
  description: "Convenient parking spot",
  address: "xintiandi, shanghai",
  half_hour_rate: 400,
  availability: true,
  remote_photo_url: url_7)

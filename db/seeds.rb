puts "Clearing Database"
Booking.delete_all
Space.delete_all
User.delete_all

puts "Generating fake database"

# USERS

puts "Generating 2 standard users"

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

puts "Generating 8 random users"

8.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::Number.number(8),
    email: Faker::Internet.email,
    password: 123456)
end

# SPACES

puts "Generating spaces"

rate = [20, 30, 35, 40, 50, 75, 100, 150]
start_id = User.last.id - User.count + 1
end_id = User.last.id
user_id_sample = *(start_id..end_id)

# Space.create(
#   title: "Jet Parking",
#   description: "Are you a private jet owner?",
#   address: "Pudong International Airport",
#   half_hour_rate: 10000,
#   availability: true)

Space.create(
  user_id: User.first.id,
  title: "People's Square",
  description: "Lovely little parking spot",
  address: "People's Square, Shanghai",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: "Financial Center",
  description: "Tallest building in Shanghai!",
  address: "Shanghai World Financial Center",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: "Hunan Rd",
  description: "Safe and secure parking spot",
  address: "Hunan Road, Shanghai",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: "Kerry Center Parking Lot",
  address: "Jing'an Kerry Center",
  description: "For those who love shopping",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: "Four Seasons Hotel",
  description: "Adorable little parking space",
  address: "Four Seasons Hotel Shanghai",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: "XinTianDi",
  description: "Convenient parking spot",
  address: "Xintiandi, Shanghai",
  half_hour_rate: rate.sample,
  availability: true)



Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Expo 2010",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Jin Mao Tower",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Jing'an Temple",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "People's Park, Shanghai",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Shanghai Zoo",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Tianzifang",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Yuyuan Garden",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Century Park",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Hongqiao Airport Terminal 1",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Qufu Road",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Shanghai Jiatong University",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Dashijie",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Changping Road",
  half_hour_rate: rate.sample,
  availability: true)

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Shanghai Circus World",
  half_hour_rate: rate.sample,
  availability: true)

# BOOKINGS

puts "Generating bookings"

start_id_space = Space.last.id - Space.count + 1
end_id_space = Space.last.id
space_id_sample = *(start_id_space..end_id_space)

20.times do
  Booking.create(
    start_datetime: Faker::Time.backward(2, :day),
    end_datetime: Faker::Time.forward(3, :day),
    status: "pending",
    total_price: nil,
    user_id: user_id_sample.sample,
    space_id: space_id_sample.sample)
end

puts 'Calculating prices for each booking'

bookings = Booking.all
bookings.each do |booking|
  booking_length = (booking.end_datetime - booking.start_datetime) / 3600 * 2
  booking.total_price = ( booking_length * booking.space.half_hour_rate ).ceil
  booking.save
end

puts "Seeding complete"

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
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960874/Blue_Disc_Parking_Area_Markings_Blue_Paint.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: "Financial Center",
  description: "Tallest building in Shanghai!",
  address: "Shanghai World Financial Center",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960856/1392104905_IMG_2060.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: "Hunan Rd",
  description: "Safe and secure parking spot",
  address: "Hunan Road, Shanghai",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960855/private-garage-with-parking-spaces-in-calatrava.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: "Kerry Center Parking Lot",
  address: "Jing'an Kerry Center",
  description: "For those who love shopping",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960854/Try-This-Furthest-Spot.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: "Four Seasons Hotel",
  description: "Adorable little parking space",
  address: "Four Seasons Hotel Shanghai",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960854/PAY-Parking-Space.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: "XinTianDi",
  description: "Convenient parking spot",
  address: "Xintiandi, Shanghai",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960853/private-garage-with-parking-spaces-in-calatrava_1.jpg")



Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Expo 2010",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960852/p1381.0.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Jin Mao Tower",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960852/Obama039s-EPA-spent-690000-on-parking-spots-no-one-used.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Jing'an Temple",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960852/Obama039s-EPA-spent-690000-on-parking-spots-no-one-used.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "People's Park, Shanghai",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960851/parking_space_ottawa.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Shanghai Zoo",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960851/A05557_1.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Tianzifang",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960850/Hotel-Cannes-de-Paris-garage-41-1024x576--1093279554.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Yuyuan Garden",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960850/1307_2068_DSC_5186.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Century Park",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960850/o.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Hongqiao Airport Terminal 1",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960849/2-off-street-parking-spaces-on-private-drive-to-rent-near-high-barnet-tube-station-16477693-1_800X600.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Qufu Road",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960849/2015-03-27-19.39.37.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Shanghai Jiatong University",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960849/korea-car-parkingv2.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Dashijie",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960848/56e69343332a2.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Changping Road",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960848/la-na-nn-parking-auction-20130614-001.jpg")

Space.create(
  user_id: user_id_sample.sample,
  title: Faker::Address.street_name,
  description: "Great place to park near #{Faker::Address.community}",
  address: "Shanghai Circus World",
  half_hour_rate: rate.sample,
  availability: true,
  remote_photo_url: "https://res.cloudinary.com/dsvnlo5ja/image/upload/v1542960848/111-01-kulag-30012017-5-c02-93.jpg")

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

require "open-uri"

puts "new seed launched, destroying old booking / review / rooms / users !"

puts "new seed launched, destroying old users !"
Booking.delete_all
puts "Bookings deleted"
Review.delete_all
puts "Reviews deleted"
Room.delete_all
puts "Rooms deleted"
User.delete_all
puts "Users deleted"

puts "create 3 new users !"

user_1 = User.create!({ email: "user1@mail.com", password: "u1u1u1" })
user_2 = User.create!({ email: "user2@mail.com", password: "u2u2u2" })
user_3 = User.create!({ email: "user3@mail.com", password: "u3u3u3" })

puts "3 new users created !"


puts "create new rooms !"

# db/seeds.rb


room_user_2 = Room.create!(title: "A Private Haven for Two",
  address: "123 street of love",
  rating: 4,
  description: "A cozy love room in the heart of the city.",
  price: 65.00,
  user_id: user_1.id,
  city: "New-York",
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674915923/development/0222k120008rco98m6B04_R_960_660_R5_D_xbvwv6.webp")
room_user_2.photo.attach(io: @image, filename: "#{room_user_2.title}.jpg", content_type: "image/jpg")
room_user_2.save

puts "room 1/10 created"

room_user = Room.create!(title: "Sensual Escape",
  address: "33 street of pleasure",
  rating: 5,
  description: "Indulge in a private and intimate setting perfect for lovers looking to spice up their love life.",
  price: 150.00,
  user_id: user_1.id,
  city: "Kansas city",
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594712/development/chambre_vfty9k.jpg")
room_user.photo.attach(io: @image, filename: "#{room_user.title}.jpg", content_type: "image/jpg")
room_user.save

puts "room 2/10 created"

@room = Room.create!(title: "Naughty Nights",
  address: "127 street of night",
  rating: 3,
  description: "Escape to a luxurious and sensual getaway designed for lovers to explore their desires.",
  price: 40.00,
  user_id: user_3.id,
  city: "Los-Angeles",
  guests_number: 3
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594708/development/thumb_1200_6096fd480544d_l5q35p.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 3/10 created"


@room = Room.create!(
  title: "Romantic Rendezvous",
  address: "56 street of naughty",
  rating: 4,
  description: "Experience romance in a whole new way in our beautifully designed suite, tailored for lovers.",
  price: 240,
  city: "Las-Vegas",
  user_id: user_2.id,
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594708/development/thumb_1200_5e3333e4c7e10_btulje.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 4/10 created"

@room = Room.create!(
  title: "Passionate Paradise",
  address: "15 street of passion",
  rating: 3,
  description: "Ignite the fire of passion in our exotic and romantic room.",
  price: 150,
  city: "Miami",
  user_id: user_2.id,
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/Bedroom_inviting_cjqtql.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 5/10 created"

@room = Room.create!(
  title: "Secret Hideaway for Lovers",
  address: "54 street of hideaway",
  rating: 4,
  description: "Unwind and rejuvenate in our secluded and seductive room, perfect for lovers seeking a romantic getaway.",
  price: 64,
  city:"Boston",
  user_id: user_3.id,
  guests_number: 5
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/airbnb_lyon_Le-nid-des-amants-du-Vieux-Lyon-745x497_nxfn2r.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 6/10 created"

@room = Room.create!(
  title: "Sensual Sanctuary",
  address: "86 stree of sensuality",
  rating: 3,
  description: "Explore your wildest fantasies in our daring and erotic room.",
  price: 100,
  city: "Seattle",
  user_id: user_3.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/6026441d5af56_tz6ury.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 7/10 created"

@room = Room.create!(
  title: "Lusty Lair",
  address:"98 street of Lusty",
  rating: 4,
  description:"Serenade your partner in our musically themed room, complete with a private concert experience for lovers",
  price: 70,
  city: "Chicago",
  user_id: user_2.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/210a9415_d1agd0.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 8/10 created"

@room = Room.create!(
  title: "Desire Den",
  address: "74 street of desire",
  rating: 3,
  description: "Relax and rejuvenate in our lovers spa suite, complete with a hot tub, sauna and massage services.",
  price: 80,
  city: "San Fransisco",
  user_id: user_2.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/2ddfe6c_1653491787205-airbnb-harry-potter-001_neae7f.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 9/10 created"

@room = Room.create!(
  title:"Pleasure Palace",
  address: "124 street of palace",
  rating: 4,
  description: "Have fun and play in our playful and adventurous room, designed for couples looking to experiment.",
  price: 80,
  city: "Houston",
  user_id: user_3.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/8-500x380_jxvucb.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

puts "room 10/10 created"

puts "New rooms created !"

puts "create 3 new reviews for every room !"

@rooms = Room.all

@rooms.each do |room|
  puts "create reviews for room #{room.id}"
  Review.create!(content: "A very nice place", review_rating: 5, room_id: room.id)
  Review.create!(content: "I had greate fun lovely time", review_rating: 4, room_id: room.id)
  Review.create!(content: "The bed wasn't made when i arrived, not cool", review_rating: 3, room_id: room.id)
end

puts "all review created !"


puts "create bookings for user1"

@booking1 = Booking.new(
  start_date: "2023-02-03",
  end_date: "2023-02-04",
  room: room_user,
  user: user_2
)

@booking1.save!

@booking2 = Booking.new(
  start_date: "2023-02-03",
  end_date: "2023-02-04",
  room: room_user_2,
  user: user_2
)

@booking2.save!

puts "Bookings for user_1 created"

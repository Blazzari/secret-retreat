require "open-uri"

puts "new seed launched, destroying old users !"
Booking.delete_all
Review.delete_all
Room.delete_all
User.delete_all

puts "create 3 new users !"

user_1 = User.create!({ email: "user1@mail.com", password: "u1u1u1" })
user_2 = User.create!({ email: "user2@mail.com", password: "u2u2u2" })
user_3 = User.create!({ email: "user3@mail.com", password: "u3u3u3" })

puts "3 new users created !"

puts "new seed launched, destroying old rooms !"

puts "create new rooms !"

# db/seeds.rb

@room = Room.create!(title: "Cozy love room in the city of love",
  address: "123 avenue du Trocadéro",
  rating: 4,
  description: "A cozy love room in the heart of the city.",
  price: 65.00,
  user_id: user_1.id,
  city: "Paris",
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594714/development/t%C3%A9l%C3%A9chargement_veuzfo.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(title: "Luxury Suite for anything you want",
  address: "33 rue viala",
  rating: 5,
  description: "A luxurious suite with a view of the city.",
  price: 150.00,
  user_id: user_2.id,
  city: "Paris",
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594712/development/chambre_vfty9k.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(title: "Budget Room so everyone can enjoy",
  address: "127 avenue victor hugo",
  rating: 3,
  description: "A budget-friendly room for everybody.",
  price: 40.00,
  user_id: user_3.id,
  city: "Paris",
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594708/development/thumb_1200_6096fd480544d_l5q35p.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(
  title: "Gite privatif avec spa et piscine",
  address: "Bain-de-Bretagne,35470",
  rating: 4,
  description: "Venez découvrir ce gîte pour 2 personnes ( exclusivement 2 personnes) avec Spa entièrement privatisé et en illimité dans la chambre.
  Ce charmant logement de 50m2, dispose de toute les commodités nécessaires pour un séjour parfait.",
  price: 240,
  city: "Lorient",
  user_id: user_2.id,
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594708/development/thumb_1200_5e3333e4c7e10_btulje.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(
  title: "Nuit hors du temps suite ",
  address: " La tour des pins 83460 Taradeau",
  rating: 3,
  description: "Passez une nuit 4 étoiles près de Blaye.
  Évadez-vous dans un endroit idyllique et hors du temps… La suite Gatsby est un espace atypique et magique.
  (Re)Découvrez la volupté dans cet univers de modernité et de luxe avec sa touche d'années folles.
  ",
  price: 150,
  city: "Taradeau",
  user_id: user_2.id,
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/Bedroom_inviting_cjqtql.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(
  title: "Vue panoramique sur la ville",
  address: "Toulouse",
  rating: 4,
  description: "Dans cet écrin rien ne pourra venir perturber vos rêves. Sur un niveau légèrement surélevé vous profiterez d\’une superbe vue sur les toits roses de Toulouse. Lit rond King size, matériaux nobles, lumières feutrées, chaque détail vous invite à vivre votre parenthèse. Arrêtez le temps pour créer votre instant",
  price: 64,
  city:"Toulouse",
  user_id: user_3.id,
  guests_number: 2
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/airbnb_lyon_Le-nid-des-amants-du-Vieux-Lyon-745x497_nxfn2r.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(
  title: "Les granges d\’haillancourt",
  address: "Haillancourt",
  rating: 3,
  description: "Vous trouverez ici des chambres pour toutes vos envies… Même les plus folles ! Parce que ce sont souvent les petits plus détails qui font les grandes différences, une sélection d\’agréments qui sublimeront votre séjour sont à votre disposition. A cela s\’ajoutent une piscine et un spa, pour un moment à deux que vous ne serez pas près d\’oublier.",
  price: 100,
  city: "Haillancourt",
  user_id: user_3.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/6026441d5af56_tz6ury.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(
  title: "Chambre amoureuse",
  address:"Caen",
  rating: 4,
  description:"Dans cette superbe suite avec spa privatif, tout a été pensé pour votre plaisir. Simples curieux ou véritables amateurs, la chambre avec spa 50 nuances vous offrira l'occasion de laisser libre court à votre imagination pour votre soirée en amoureux avec spa",
  price: 70,
  city: "Caen",
  user_id: user_2.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/210a9415_d1agd0.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(
  title: "Chambre de charme avec spa privatif",
  address: "Angouleme",
  rating: 3,
  description: "Ce gîte avec spa a été pensé pour offrir aux amoureux en quête d'un week-end romantique et coquin, un superbe appartement privatif spa avec toutes les commoditées.
  Contemporain et tout équipé, ce gîte de charme avec spa dispose de tout le confort.",
  price: 80,
  city: "Angouleme",
  user_id: user_2.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/2ddfe6c_1653491787205-airbnb-harry-potter-001_neae7f.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

@room = Room.create!(
  title:"Chambre baroque",
  address: "la Rochelle",
  rating: 4,
  description: "Ce sera alors le moment de vous détendre dans la véritable suite nuptiale de votre villa de charme, à moins que vous ne préfériez profiter de votre salon, décoré dans un style baroque sensuel. Des accessoires coquins vous promettent de pimenter votre week-end et vous pourrez aussi profiter de l’écran géant pour une séance cinéma à deux.
  ",
  price: 80,
  city: "la Rochelle",
  user_id: user_3.id,
  guests_number: 4
)

@image = URI.open("https://res.cloudinary.com/dkto58vbg/image/upload/v1674594707/development/8-500x380_jxvucb.jpg")
@room.photo.attach(io: @image, filename: "#{@room.title}.jpg", content_type: "image/jpg")
@room.save

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

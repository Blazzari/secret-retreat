puts "new seed launched, destroying old users !"

User.destroy_all

puts "create 3 new users !"

user_1 = User.create!({ email: "user1@mail.com", password: "u1u1u1" })
user_2 = User.create!({ email: "user2@mail.com", password: "u2u2u2" })
user_3 = User.create!({ email: "user3@mail.com", password: "u3u3u3" })

puts "3 new users created !"

puts "new seed launched, destroying old rooms !"

Room.destroy_all

puts "create 4 new rooms !"

# db/seeds.rb

Room.create!(title: "Cozy love room in the city of love",
    address: "123 avenue du Trocadéro, 75116, Paris",
    rating: 4,
    description: "A cozy love room in the heart of the city.",
    price: 65.00,
    user_id: user_1.id,
    city: "Paris",
    guests_number: 2)

Room.create!(title: "Luxury Suite for anything you want",
    address: "456 Park Ave, New Yorj USA",
    rating: 5,
    description: "A luxurious suite with a view of the city.",
    price: 150.00,
    user_id: user_2.id,
    city: "New york",
    guests_number: 4)

Room.create!(title: "Budget Room so everyone can enjoy",
    address: "789 Elm St, London, England",
    rating: 3,
    description: "A budget-friendly room for everybody.",
    price: 40.00,
    user_id: user_3.id,
    city: "London",
    guests_number: 1)

    puts " 4 new rooms created !"

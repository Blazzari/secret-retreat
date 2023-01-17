puts "new seed launched, destroying old users !"

User.destroy_all

puts "create 3 new users !"

User.create!({ email: "user1@mail.com", password: "u1u1u1" })
User.create!({ email: "user2@mail.com", password: "u2u2u2" })
User.create!({ email: "user3@mail.com", password: "u3u3u3" })

puts "3 new users created !"

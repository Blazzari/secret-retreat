puts "new seed launched, destroying old users !"
Room.destroy_all
Booking.destroy_all
Review.destroy_all
User.destroy_all

puts "create 3 new users !"

user_1 = User.create!({ email: "user1@mail.com", password: "u1u1u1" })
user_2 = User.create!({ email: "user2@mail.com", password: "u2u2u2" })
user_3 = User.create!({ email: "user3@mail.com", password: "u3u3u3" })

puts "3 new users created !"

puts "new seed launched, destroying old rooms !"

puts "create 4 new rooms !"

# db/seeds.rb

Room.create!(title: "Cozy love room in the city of love",
    address: "123 avenue du Trocadéro",
    rating: 4,
    description: "A cozy love room in the heart of the city.",
    price: 65.00,
    user_id: user_1.id,
    city: "Paris",
    guests_number: 2)

Room.create!(title: "Luxury Suite for anything you want",
    address: "33 rue viala",
    rating: 5,
    description: "A luxurious suite with a view of the city.",
    price: 150.00,
    user_id: user_2.id,
    city: "Paris",
    guests_number: 4)

Room.create!(title: "Budget Room so everyone can enjoy",
    address: "127 avenue victor hugo",
    rating: 3,
    description: "A budget-friendly room for everybody.",
    price: 40.00,
    user_id: user_3.id,
    city: "Paris",
    guests_number: 2)

Room.create!(title: "libertins rooms for"
    address: "88 Rue Saint-Denis"
    rating: 3,
    description: ("")
    price: 200,
    user_id: user_2.id,
    city: "Paris",
    guests_number:8)

Room.create!(
        title: "La demeure libertine. L'exterieur  pour le jacuzzi l'interrieur cozy."
        address: "loire Altantique"
        rating: 5,
        description: "Une adresse pour les libertain. la demeur libertine est une love room installée dans une grande maison bourgeoise du XIX a mi chemin en Rennes, Vannes, et nantes.
        Dans ce petit bourg de loire Altantique, vous serez tranquilles pour assouvir vos désirs les plus fous."
        user_id: user_3.id,
        price: 240;
        city: "Nantes"
)
Room.create!(
    title: "Gite privatif avec spa et piscine proche de rennes "
    adress: "Bain-de-Bretagne,35470"
    rating: 4;
    description: "Venez découvrir ce gîte pour 2 personnes ( exclusivement 2 personnes) avec Spa entièrement privatisé et en illimité dans la chambre.
    Ce charmant logement de 50m2, dispose de toute les commodités nécessaires pour un séjour parfait."
    price:240;
    city: "Bretagne"
    user_id: user_2.id,
)
Room.create!(
    title: "nuit hors du temps Suite "
    address: " La tour des pins 83460 Taradeau"
    rating: 3, 
    description: "Passez une nuit 4 étoiles près de Blaye.
    Évadez-vous dans un endroit idyllique et hors du temps… La suite Gatsby est un espace atypique et magique.
    (Re)Découvrez la volupté dans cet univers de modernité et de luxe avec sa touche d'années folles.
    "
    price: 150,
    city: "Taradeau"
    user_id: user_2.id,
)

Room.create!( 
    title: " Vue panoramique sur la ville"
    address: "Toulouse"
    rating: 4,
    description: "Dans cet écrin rien ne pourra venir perturber vos rêves. Sur un niveau légèrement surélevé vous profiterez d’une superbe vue sur les toits roses de Toulouse. Lit rond King size, matériaux nobles, lumières feutrées, chaque détail vous invite à vivre votre parenthèse. Arrêtez le temps pour créer votre instant"
    price: 64,
    city:"Toulouse"
    user_id: user_3.id,
)

Room.create!(
    title: "Les granges d’haillancourt"
    adress: "Haillancourt"
    rating: 3,
    description: "Vous trouverez ici des chambres pour toutes vos envies… Même les plus folles ! Parce que ce sont souvent les petits plus détails qui font les grandes différences, une sélection d’agréments qui sublimeront votre séjour sont à votre disposition. A cela s’ajoutent une piscine et un spa, pour un moment à deux que vous ne serez pas près d’oublier."
    price: 100,
    city: "Haillancourt"
    user_id: user_3.id,
)

Room.create!(
    title: "Chambre coquine avec spa privatif à Caen"
    adress:"Caen"
    rating: 4,
    description:"Dans cette superbe suite avec spa privatif, tout a été pensé pour votre plaisir. Simples curieux ou véritables amateurs, la chambre avec spa 50 nuances vous offrira l'occasion de laisser libre court à votre imagination pour votre soirée en amoureux avec spa"
    price: 70, 
    city: "Caen"
    user_id: user_2.id,
)
Room.create!(
    title: "Chambre de charme avec spa privatif"
    adress: "Angouleme"
    rating: 3,
    description: "Ce gîte avec spa a été pensé pour offrir aux amoureux en quête d'un week-end romantique et coquin, un superbe appartement privatif spa avec toutes les commoditées.
    Contemporain et tout équipé, ce gîte de charme avec spa dispose de tout le confort."
    price: 80,
    city: "Angouleme"
    user_id: user_2.id,
)
Room.create!(
    title:"Chambre baroque"
    adress: "la Rochelle"
    rating: 4,
    description: "Ce sera alors le moment de vous détendre dans la véritable suite nuptiale de votre villa de charme, à moins que vous ne préfériez profiter de votre salon, décoré dans un style baroque sensuel. Des accessoires coquins vous promettent de pimenter votre week-end et vous pourrez aussi profiter de l’écran géant pour une séance cinéma à deux.
    "
    price: 80;
    city: "la Rochelle"
    user_id: user_3.id,
)

Room.create!(
    title: "Le paradis blanc"
    adress: "Bordeaux"
    rating: 4,
    description: "C'est le lieu idéal, une parenthèse amoureuse dans un cadre idyllique pour vous évader le temps d'une nuit ou d'un séjour plus long."
    price: 40;
    city: "Bordeaux "
    user_id: user_2.id,
    
)

puts " 4 new rooms created !"

puts "create 3 new reviews for every room !"

@rooms = Room.all

@rooms.each do |room|
  puts "create reviews for room #{room.id}"
  Review.create!(content: "A very nice place", review_rating: 5, room_id: room.id)
  Review.create!(content: "I had greate fun lovely time", review_rating: 4, room_id: room.id)
  Review.create!(content: "The bed wasn't made when i arrived, not cool", review_rating: 3, room_id: room.id)
end

puts "all review created !"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'faker'

User.destroy_all

User.create!(
  first_name: 'Haji',
  last_name: 'Mammadov',
  address: Faker::Address.street_address,
  email: 'hmammado@gmail.com',
  password: 'password'
)

User.create!(
  first_name: 'Monica',
  last_name: 'Suy',
  address: Faker::Address.street_address,
  email: 'monicasuy96@gmail.com',
  password: 'password'
)

User.create!(
  first_name: 'Diana',
  last_name: 'Barroso',
  address: Faker::Address.street_address,
  email: 'dianabarrg@gmail.com',
  password: 'password'
)

addresses = ["C. de Pere IV, 272, 08005 Barcelona", "Avinguda Diagonal, 3, 08019 Barcelona", "Carrer de Roc Boronat, 116, 126, 08018 Barcelona",
           "Carrer de Josep Pla, 69, 08019 Barcelona", "Carrer de Veneçuela, 78, 08019 Barcelona", "Carrer de Bac de Roda, 126, 08020 Barcelona",
          "C. de Pallars, 203, 08005 Barcelona", "Carrer de Lope de Vega, 112, 114, 08005 Barcelona", "Passeig Marítim de la Nova Icària, 38, 08005 Barcelona",
        "Rambla del Poblenou, 11, 08005 Barcelona", "Rambla del Poblenou, 57, 59, 08005 Barcelona", "Carrer de Badajoz, 44, 08005 Barcelona", "Carrer de Bac de Roda, 38, 08019 Barcelona",
        "Carrer de Fluvià, 43, 08019 Barcelona", "Carrer de Llull, 230, 08005 Barcelona", "Rambla de Prim, 146, 08019 Barcelona"]


  new_user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    password: 'password'
  )


    Dog.create(name: "Nolan", breed: "American Staffordshire Terrier", size: "medium", age: 1,
      description: "Nolan loves eating apples, he's super friendly and playful and loves cuddling.
      He is so calm and well behaved. So easy to love", price: 25,
      address: "Carrer de Benet Mercadé 25, 08012 Barcelona", user: User.first)
    Dog.create(name: "Pepe", breed: "Italian Greyhound", size: "small", age: 1,
      description: "Pepe is super energetic, he loves running, and going to the pipican.
      He is currently in a very strict diet, so no snacks for him; he's only allowed to eat his kibbles,
      he loves jumping, cuddling and kisses", price: 10,
      address: "Passeig de Fabra i Puig, 296 08031 Turó de la Peira Barcelona", user: User.first)
    Dog.create(name: "Tributo", breed: "Labrador", size: "large", age: 2.5,
      description: "Tributo loves playing, but for some reason other male dogs don't like him that much,
      so for his own safety, he must be wearing a leash while outside.
      He loves playing, his favorite game is pulling a rope", price: 14,
      address: "Carrer de Benet Mercadé 5, 08012 Barcelona", user: User.first)
    Dog.create(name: "Macario", breed: "Mix", size: "small", age: 10 ,
      description: "I just adopted Macario 8 months ago. He was rescued from an abandoned patio
      where he was feeded with leaftovers, and no interaction. He spent there more than
      10 years before we met each other. Now, he is really aware of all the thing
      he has missed, so he loves learning new stuff. Beware, he loves snacks and food,
      so better keep an eye on your meal", price: 11,
      address: "Avinguda de l'Estatut de Catalunya 08035 La Vall d'Hebron Barcelona", user: User.first)
    Dog.create(name: "Winter Miller", breed: "Maltese", size: "small", age: 8,
      description: "Winter Miller will follow you around the house, she is so sweet and lovely,
      so proper and well behaved, she will be by your side or in her crate. So easy to take care of her.
      She's so quiet that sometimes you could forget she's there",
      price: 8, address: "Passeig de Gràcia, 132 08008 Vila de Gràcia Barcelona", user: User.first)
    Dog.create(name: "Popa", breed: "Mini Dachshund", size: "small", age: 3.5,
      description: "Popa is a teckel mini, she's so small, but she's not aware of that; she has
      A LOT of personality, she's so clever. And definitely will catch everyone's atenttion.
      She will not hesitate to bark. She is overweighted so is currently in a very strict diet,
      so no snacks for her", price: 18,
      address: "Carrer de Valencia 234, 08007 Barcelona Spain", user: User.first)
    Dog.create(name: "Jofre", breed: "Catalan Sheepdog", size: "large", age: 1, description: "Jofre is super friendly,
      he loves smelling other dogs pee, and chewing bones. When walking with him, be aware of where he pees, he likes to do it in super random places.
      So better be safe than sorry; I bet you don't want to be apologizing to strangers.", price: 16, address: "Carrer del Dr. Rizal 4, 408006 Barcelona", user: User.first)
    Dog.create(name: "Matilda", breed: "Belgian Shepherd/Mix", size: "large", age: 0.9, description: "Super energetic puppy, she's a big barker,
      but we are working on correcting this behavior. She loves playing and long walks. Also, be careful with the food you leave unattended, she will not
      leave any sort of trace that she ate it", price: 10, address: "Carrer Gran de Gràcia, 162, 08012 Barcelona", user: User.first)
    Dog.create(name: "Lola", breed: "French Bulldog", size: "small", age: 8, description: "Even though Lola has 8 years old, she has lots of energy and she will never
      stop playing with other dogs. She gets dizzy in the car, so we can't take her with us for vacation; and usually she won't eat in the first day outside home,
      but just adding some wet food or jamon will do, and she will eat again. She loves watching tv with us and belly rubs", price: 7,
        address: "Carrer de Muntaner, 6408011 Barcelona", user: User.first)
    Dog.create(name: "Alfred", breed: "Labrador mix", size: "medium", age: 2, description: "Has A LOT of energy, loves running, likes eating super random stuff, and he has
      an obsession with balls. Other than that, he is an adorable dog; behaves really well in home.", price: 14, address: "Carrer de Berga 40, 08012 Barcelona", user: User.first)


  Dog.all.each do |dog|
    file = URI.open('https://source.unsplash.com/800x600/?dog')
    dog.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  end


  # file = URI.open('https://source.unsplash.com/800x600/?dog')
  # Dog.first.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')


# 10.times do
#   new_user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     address: Faker::Address.street_address,
#     email: Faker::Internet.email,
#     password: 'password'
#   )

#   new_dog = Dog.create!(
#     name: Faker::Creature::Dog.name,
#     breed: Faker::Creature::Dog.breed,
#     size: Faker::Creature::Dog.size,
#     age: Faker::Number.between(from: 1, to: 16),
#     description: Faker::Creature::Dog.meme_phrase,
#     price: Faker::Number.within(range: 1..50),
#     address: Faker::Address.city,
#     user: new_user
#   )

#   file = URI.open('https://source.unsplash.com/400x300/?dog')
#   new_dog.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   sleep 2
# end

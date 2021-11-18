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

addresses.each do |address|
  new_user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    password: 'password'
  )

  new_dog = Dog.create!(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    size: Faker::Creature::Dog.size,
    age: Faker::Number.between(from: 1, to: 16),
    description: Faker::Creature::Dog.meme_phrase,
    price: Faker::Number.within(range: 1..50),
    address: address,
    user: new_user
  )

  file = URI.open('https://source.unsplash.com/400x300/?dog')
  new_dog.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  sleep 2
end




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

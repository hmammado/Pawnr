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

10.times do
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
    address: Faker::Address.city,
    user: new_user
  )

  file = URI.open('https://source.unsplash.com/400x300/?dog')
  new_dog.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  sleep 2
end

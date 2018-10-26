# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: Faker::Number.between(18,70))
  User.create!(city_id: rand(1..10), gossip_id: rand(1..20), tag_id: rand(1..5), private_message_id: rand(1..15))
end

10.times do
  City.create!(name: Faker::Address.city, zip_code: Faker::Number.number(5), user_id: rand(1..10))
end

20.times do
   Gossip.create!(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, date: Faker::Date.forward(30), user_id: rand(1..10), tag_id: rand(1..5))
end

10.times do
   Patient.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, city_id: rand(1..10))
end

10.times do
  Tag.create!(title: Faker::Lorem.sentence, user_id: rand(1..10), gossip_id: rand(1..20))
end

15.times do
  PrivateMessage.create!(content: Faker::Lorem.paragraph, date: Faker::Date.forward(30), user_id: rand(1..10))
end

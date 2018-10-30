# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  City.create!(name: Faker::Address.city, zip_code: Faker::Number.number(5))
end

10.times do
  User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: Faker::Number.between(18,70))
  User.create!(city_id: rand(City.first.id..City.last.id))
end

20.times do
   Gossip.create!(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, date: Faker::Date.forward(30), user_id: rand(User.first.id..User.last.id))
end

10.times do
  Tag.create!(title: Faker::Lorem.sentence)
end

10.times do
   Comment.create!(content: Faker::Lorem.paragraph, user_id: rand(User.first.id..User.last.id), commenteable_id: rand(Gossip.first.id..Gossip.last.id), commenteable_type: "Gossip")
   Comment.create!(content: Faker::Lorem.paragraph, user_id: rand(User.first.id..User.last.id), commenteable_id: rand(Comment.first.id..Comment.last.id), commenteable_type: "Comment")
end

15.times do
  PrivateMessage.create!(content: Faker::Lorem.paragraph, sender_id: rand(User.first.id..User.last.id), user_id:rand(User.first.id..User.last.id))
end

15.times do
  Multirecipients.create!(private_message_id: rand(PrivateMessage.first.id..PrivateMessage.last.id))
end

15.times do
  Like.create!(likeable_id: rand(Gossip.first.id..Gossip.last.id), likeable_type: "Gossip")
  Like.create!(likeable_id: rand(Comment.first.id..Comment.last.id), likeable_type: "Comment")
end

15.times do
  Tag.all.each do |tag|
    rand(10).times do
      tag.gossips << Gossip.find(rand(Gossip.first.id..Gossip.last.id))
    end
  end
end

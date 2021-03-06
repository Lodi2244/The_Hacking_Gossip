# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  user = User.new
  user.user_name = Faker::Internet.username
  user.email = Faker::Internet.email
  user.password = Faker::Internet.password
  user.save
end

10.times do
  comment = Comment.new
  comment.name = Faker::Lorem.sentence
  comment.content = Faker::Lorem.paragraph
  comment.save
end

10.times do
  gossip = Gossip.new
  gossip.author = Faker::Name.name
  gossip.content = Faker::Lorem.sentence
  gossip.save
end
